#!/bin/bash

#####################
# Installing docker #
#####################

echo "Creating the workshop folder..." | wall -n

mkdir /log-workshop

git clone https://github.com/l0k0ms/distributed-tracing-with-apm-workshop.git /log-workshop

cd /log-workshop/

git checkout log-workshop

echo "Workshop folder created !" | wall -n

touch ~/.bashrc

echo "export POSTGRES_USER=postgres" >> ~/.bashrc

echo "export POSTGRES_PASSWORD=postgres" >> ~/.bashrc

echo "alias application_build='POSTGRES_USER=\$POSTGRES_USER POSTGRES_PASSWORD=\$POSTGRES_PASSWORD DD_API_KEY=\$DD_API_KEY docker-compose up --build'">> ~/.bashrc

echo "alias application_up='POSTGRES_USER=\$POSTGRES_USER POSTGRES_PASSWORD=\$POSTGRES_PASSWORD DD_API_KEY=\$DD_API_KEY docker-compose up -d'">> ~/.bashrc

echo "alias application_stop='docker-compose stop && docker-compose rm'">> ~/.bashrc

echo "alias application_reload='application_stop && application_up'">> ~/.bashrc

echo "alias log_bomb='docker run -d --label com.datadoghq.ad.logs:='\"'\"'[{\"source\": \"log_bomb\", \"service\": \"apache\"}]'\"'\"' -it --rm mingrammer/flog -f apache_common -l -n 100000 -d 0.2'">> ~/.bashrc

echo "alias new_step='source ~/.bashrc && cd ~/log-workshop"

echo "Configuration is now over" | wall -n