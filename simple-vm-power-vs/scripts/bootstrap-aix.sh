#!/bin/bash

# Installs MySQL and sets up an initial password; feel free to change

MYSQL_PASSWD="s3cur3Pa5sw0rd"
yum install -y MySQL.ppc
/opt/freeware/bin/mysqladmin -u root password "$MYSQL_PASSWD"
/opt/freeware/bin/mysql --user="root" --password="$MYSQL_PASSWD" --database="mysql" --execute="GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';
