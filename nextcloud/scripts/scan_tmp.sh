#!/bin/bash
docker exec nextcloud sudo -u abc php /config/www/nextcloud/occ files:scan waynebilger --path=/sharedfolders/union/data/Backup/LRT/tmp
