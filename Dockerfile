FROM public.ecr.aws/amazonlinux/amazonlinux:2023

RUN dnf update -y \
    && dnf install -y httpd php php-mysqli php-mbstring php-intl git libmicrohttpd libmicrohttpd-devel \ 
    && curl -s https://getcomposer.org/installer | php \
    && mv composer.phar /bin/composer \ 
    && composer require twig/twig

COPY --chown=apache:apache . /var/www/html/
COPY scripts/httpd.conf /etc/httpd/conf

WORKDIR /var/www/html

EXPOSE 80
CMD httpd && php ./index.php 
