FROM rockylinux:9 AS php-base
RUN dnf update -y \
    && dnf install -y httpd php php-mysqli php-mbstring php-intl git\ 
    && curl -s https://getcomposer.org/installer | php \
    && mv composer.phar /bin/composer \ 
    && composer require twig/twig \
    && mkdir /run/php-fpm \ 
    && touch  /run/php-fpm/www.sock \
    && chown apache:apache /run/php-fpm \
    && chown apache:apache /run/php-fpm/www.sock 


FROM php-base as php-app
WORKDIR /var/www/html

COPY --chown=apache:apache . /var/www/html/
COPY scripts/httpd.conf /etc/httpd/conf


RUN chmod +x scripts/entrypoint.sh

EXPOSE 80
ENTRYPOINT ["scripts/entrypoint.sh"]
