FROM public.ecr.aws/amazonlinux/amazonlinux:2023

RUN dnf update -y \
    && dnf install -y httpd php php-mysqli php-mbstring php-intl git \ 
    && curl -s https://getcomposer.org/installer | php \
    && mv composer.phar /bin/composer \ 
    && composer require twig/twig \
    && mkdir /run/php-fpm \ 
    && touch  /run/php-fpm/www.sock \
    && chown apache:apache /run/php-fpm \
    && chown apache:apache /run/php-fpm/www.sock

COPY --chown=apache:apache . /var/www/html/
COPY scripts/httpd.conf /etc/httpd/conf

WORKDIR /var/www/html

EXPOSE 80
CMD /usr/sbin/php-fpm && httpd; bash
