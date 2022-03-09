#!/bin/bash -
#===============================================================================
#
#          FILE: mediawiki_run.sh
#
#         USAGE: ./mediawiki_run.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03/09/2022 05:52:18 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
sudo systemctl start mariadb.service
sudo apachectl
firefox http://localhost/mediawiki-1.37.1/index.php
