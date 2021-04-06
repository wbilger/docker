#!/bin/bash
#sudo docker exec --user www-data nextcloud_app_1 php occ files:scan jenn -v
docker exec nextcloud sudo -u abc php /config/www/nextcloud/occ files:scan jennbilger -v
