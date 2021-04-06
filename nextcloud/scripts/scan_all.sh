#!/bin/bash
#sudo docker exec --user www-data nextcloud php occ files:scan --all -v
docker exec nextcloud sudo -u abc php /config/www/nextcloud/occ files:scan --all
