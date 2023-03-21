#/bin/bash

rpm -Uhv https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
dnf install -y mysql-community-server 
systemctl start mysqld 
systemctl enable mysqld 
rootPass=$(sudo grep 'A temporary password' /var/log/mysqld.log| cut -d ' '  -f13)
mysql --user=root --password=$rootPass --connect-expired-password  --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY '#@!Hussein123'"
rootPass="#@!Hussein123"
mysql --user=root --password=$rootPass  --execute="create user 'hussein.mimi'@'%' identified by '#@!Qgcic0ot5';grant ALL PRIVILEGES on *.* to 'hussein.mimi'@'%' with grant option;"
sudo service mysqld restart
