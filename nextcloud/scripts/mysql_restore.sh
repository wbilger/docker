#!/bin/bash

#### Nextcloud Backup

# Turn on Maintenance Mode

echo "Turning on maintenance mode for Nextcloud..."
docker exec --user abc nextcloud php /config/www/nextcloud/occ maintenance:mode --on
echo "Done"
echo

# Backup DB

echo "Restoring Nextcloud database..."
cat /home/wayne/docker/nextcloud/config.old/nextcloud_db.dmp | docker exec -i nextcloud_db /usr/bin/mysql -u admin --password=WCBadmin5359 nextcloud
echo "Done"
echo

# Turn off Maintenance Mode

echo "Turning off maintenance mode for Nextcloud..."
docker exec --user abc nextcloud php /config/www/nextcloud/occ maintenance:mode --off
echo "Done"
echo
