#!/bin/bash

#### Nextcloud Backup

# Turn on Maintenance Mode

echo "Turning on maintenance mode for Nextcloud..."
docker exec --user abc nextcloud php /config/www/nextcloud/occ maintenance:mode --on
echo "Done"
echo

# Backup DB

echo "Backing up Nextcloud database..."
docker exec nextcloud_db sh -c 'exec mysqldump --single-transaction -h localhost -u admin -pWCBadmin5359 nextcloud' > /home/wayne/docker/nextcloud/config/nextcloud_db.dmp
echo "Done"
echo

# Turn off Maintenance Mode

echo "Turning off maintenance mode for Nextcloud..."
docker exec --user abc nextcloud php /config/www/nextcloud/occ maintenance:mode --off
echo "Done"
echo
