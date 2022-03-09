#!/bin/bash -
#===============================================================================
#
#          FILE: mediawiki_install.sh
#
#         USAGE: ./mediawiki_install.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03/09/2022 04:27:59 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
wget https://releases.wikimedia.org/mediawiki/1.37/mediawiki-1.37.1.zip
sudo pacman -S apache php7-apcu php7-intl  php7-apache mariadb php7-apcu
unzip mediawiki-1.37.1.zip
sudo mv mediawiki-1.37.1 /srv/http/
# correct /etc/httpd/conf/extra/httpd-vhosts.conf

# uncomment line 67 LoadModule mpm_prefork_module modules/mod_mpm_prefork.so in httpd.conf
# comment  66 #LoadModule mpm_event_module modules/mod_mpm_event.so in httpd.conf
 # uncomment  919 extension=iconv and  921 extension=intl and  923 extension=mysqli and 927 extension=pdo_mysql in /etc/php7/php.ini
 # uncomment line 1 in /etc/php7/conf.d/apcu.ini


 sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
 sudo systemctl start mariadb.service

# create new user for mariadb!:
    # sudo mysql -u root mysql
    # CREATE USER 'phpadmin'@'localhost' IDENTIFIED BY '132UWEhqwe?!*&as';
    # GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;
    # FLUSH PRIVILEGES;

# it works :)
