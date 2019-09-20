#!/bin/bash

yum install -y MySQL.ppc
/opt/freeware/bin/mysqladmin -u root password 's3cur3Pa5sw0rd'
/opt/freeware/bin/mysql --user="root" --password="s3cur3Pa5sw0rd" --database="mysql" --execute="GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';"
