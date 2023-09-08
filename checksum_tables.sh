#!/bin/sh

DB_USER=root
DB_PASS=root
DB_NAME=test

tables=$(mysql -u $DB_USER --password=$DB_PASS --protocol=TCP $DB_NAME -e "SHOW TABLES")

for table in $tables
do
  { mysql -u $DB_USER --password=$DB_PASS --protocol=TCP $DB_NAME -e "CHECKSUM TABLE $table"; } 
done
