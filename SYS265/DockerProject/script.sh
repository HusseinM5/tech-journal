#!/bin/bash
echo $'\e[1;32m'"Downloading files..."$'\e[0m'
echo ""
## DOWNLOADING AND CREATING DOCKER COMPOSE FILES ##
mkdir /home/mohammed/docker-db
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/docker-compose-db.yml -O /home/mohammed/docker-db/docker-compose.yml

mkdir /home/mohammed/docker-web
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/docker-compose-web.yml -O /home/mohammed/docker-web/docker-compose.yml
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/Dockerfile -O /home/mohammed/docker-web/Dockerfile
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/index.php -O /home/mohammed/docker-web/index.php
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/server.php -O /home/mohammed/docker-web/server.php
wget https://raw.githubusercontent.com/HusseinM5/tech-journal/main/SYS265/DockerProject/errors.php -O /home/mohammed/docker-web/errors.php

echo ""
echo $'\e[1;32m'"Starting docker!"$'\e[0m'
echo ""
cd /home/mohammed/docker-db
docker-compose up -d
sleep 7
cd /home/mohammed/docker-web
docker-compose up -d
sleep 7


echo $'\e[1;32m'"Adding firewall rules!"$'\e[0m'
echo ""
ufw allow 8000
ufw allow 8080
ufw allow 80
ufw allow 443
ufw allow 3306
ufw reload
