#!/bin/sh

###########################
#        START ALL        #
###########################

service php7.3-fpm start
service mysql start
service nginx start

##########################
#      LAUNCH MYSQL      #
##########################

mysql -e "
create database wordpress;
create user gaylor@localhost identified by 'gaylor';
grant all privileges on wordpress.* to gaylor@localhost;
flush privileges;"

/bin/sh
