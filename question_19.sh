####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  19                                                                                            #
#  Question       =  Write a script that automates the process of creating a new MySQL database, user, and         #
#                    granting privileges.                                                                          #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

DB_HOST="localhost"
DB_ROOT_USER="root"
DB_ROOT_PASSWORD="root"

DB_NAME="my_database"
DB_USER="mysqluser"
DB_PASSWORD="userpass"

mysql -h $DB_HOST -u $DB_ROOT_USER -p$DB_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;" 2>/dev/null

mysql -h $DB_HOST -u $DB_ROOT_USER -p$DB_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" 2>/dev/null

mysql -h $DB_HOST -u $DB_ROOT_USER -p$DB_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" 2>/dev/null

mysql -h $DB_HOST -u $DB_ROOT_USER -p$DB_ROOT_PASSWORD -e "FLUSH PRIVILEGES;" 2>/dev/null

echo -e "MySQL Database, User, and Privileges created successfully."
echo -e "Database name= $DB_NAME \nDatabase username= $DB_USER"

