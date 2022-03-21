#!/bin/bash -
#===============================================================================
#
#          FILE: update_git.sh
#
#         USAGE: ./update_git.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03/21/2022 05:04:17 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
cp -p /etc/php7/php.ini ./etc/php7/php.ini
cp -p /etc/php7/conf.d/apcu.ini ./etc/php7/conf.d/apcu.ini
cp -p /etc/httpd/conf/extra/httpd-vhosts.conf ./etc/httpd/conf/extra/httpd-vhosts.conf 
cp -p /etc/httpd/conf/httpd.conf ./etc/httpd/conf/httpd.conf 
cp -p /srv/http/mediawiki-1.37.1/{composer.json,LocalSettings.php} ./srv/http/mediawiki-1.37.1/
