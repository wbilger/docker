#!/bin/bash
docker-compose pull 
docker-compose up -d
docker exec -it nextcloud updater.phar
