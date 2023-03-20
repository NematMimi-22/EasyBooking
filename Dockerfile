FROM public.ecr.aws/amazonlinux/amazonlinux:2023

RUN dnf update -y \
    && dnf install -y httpd php php-mysqli php
COPY . /var/www/html/
WORKDIR /var/www/html

EXPOSE 80
CMD httpd && php ./index.php 
