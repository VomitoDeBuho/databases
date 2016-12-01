#!/bin/bash

# VARIABLES NECESSÀRIES
export DB_USER=usuari
export DB_PWD=password

yum install -y wget bzip2

# Download Database
cd /tmp/
wget https://launchpad.net/test-db/employees-db-1/1.0.6/+download/employees_db-full-1.0.6.tar.bz2
#tar -xjvf file.tar.bz2 -C /tmp/employees_db

tar -xjvf file.tar.bz2
cd /tmp/employess_db

mysql -u $DB_USER --password="$DB_PWD" < /tmp/employees.sql

mysql -u $DB_USER --password="$DB_PWD" < /tmp/test_employees_md5.sql

cd /tmp/

rm -rf employees_db
rm employees_db-full-1.0.6.tar.bz2
