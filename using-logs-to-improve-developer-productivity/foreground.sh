#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

cd ../ecommworkshop/deploy/docker-compose/

touch ~/.bashrc

echo "alias app_start='docker-compose -f docker-compose-fixed-instrumented.yml up -d'">> ~/.bashrc
echo "alias app_start_with_logs='docker-compose -f docker-compose-fixed-instrumented.yml up'">> ~/.bashrc
echo "alias app_stop='docker-compose -f docker-compose-fixed-instrumented.yml stop && docker-compose -f docker-compose-fixed-instrumented.yml rm -f'">> ~/.bashrc
echo "alias app_restart='app_stop && app_start'">> ~/.bashrc

echo "alias generating_traffic='docker-compose -f docker-compose-traffic-replay.yml up -d'" >> ~/.bashrc
echo "alias creating_issue='docker kill docker-compose_db_1 >> /dev/null 2>&1 &'" >> ~/.bashrc

echo "alias generating_logs='docker run -d  -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2'">>~/.bashrc

source ~/.bashrc

clear

prepenvironment
