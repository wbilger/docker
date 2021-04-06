#!/bin/bash
cd /home/wayne/docker/books
docker-compose down
cd /home/wayne/docker/dvr
docker-compose down
cd /home/wayne/docker/guacamole
docker-compose down
cd /home/wayne/docker/htpc
docker-compose down
cd /home/wayne/docker/nextcloud
docker-compose down
cd /home/wayne/docker/pihole
docker-compose down
sudo service docker stop
sudo service docker start
docker-compose up -d
cd /home/wayne/docker/nextcloud
docker-compose up -d
cd /home/wayne/docker/htpc
docker-compose up -d
cd /home/wayne/docker/guacamole
docker-compose up -d
cd /home/wayne/docker/dvr
docker-compose up -d
cd /home/wayne/docker/books
docker-compose up -d
