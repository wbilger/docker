#!/bin/bash
docker-compose pull 
docker-compose up -d
echo update raspberry-pi pi-hole...
/home/wayne/scripts/pihole/update.sh
