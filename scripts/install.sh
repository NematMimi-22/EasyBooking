#/bin/bash

# MYSQL server install
rpm -Uhv https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
dnf install -y mysql-community-server httpd  
systemctl start mysqld 
systemctl enable mysqld 
rootPass=$(sudo grep 'A temporary password' /var/log/mysqld.log| cut -d ' '  -f13)
echo $rootPass > ~/db_root_password.txt

# Github SSh
dnf install -y git
# generate SSH key and print public


# php
dnf install -y php php-mysqli php-mbstring php-intl


# httpd install and settings
dnf install -y  httpd   
systemctl start httpd 
systemctl enable httpd 

