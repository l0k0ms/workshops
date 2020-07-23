#!/bin/bash

sleep 1

touch ~/.bashrc

echo "alias app_start='docker-compose -f docker-compose-fixed-instrumented-with-log.yml up -d'">> ~/.bashrc
echo "alias app_start_with_logs='docker-compose -f docker-compose-fixed-instrumented-with-log.yml up'">> ~/.bashrc
echo "alias app_stop='docker-compose -f docker-compose-fixed-instrumented-with-log.yml stop && docker-compose -f docker-compose-fixed-instrumented-with-log.yml rm -f'">> ~/.bashrc

echo "alias app_restart='app_stop && app_start'">> ~/.bashrc

echo "Initialization, please wait" | wall -n

mkdir /root/app-files
echo "Workshop folder created !" | wall -n

echo "Cloning Application repository !" | wall -n

git clone https://github.com/l0k0ms/ecommerce-workshop /root/app-files

echo "Cloning Application repository: Successful " | wall -n

cd /root/app-files

git checkout gus/log-workshop

echo "Pulling containers" | wall -n

docker-compose pull

./gor --input-file-loop --input-file requests_0.gor --output-http "http://localhost:3000" >> /dev/null 2>&1