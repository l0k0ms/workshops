#!/bin/bash

sleep 1

touch ~/.bashrc

echo "alias app_start='docker-compose -f docker-compose-fixed-instrumented.yml up -d'">> ~/.bashrc
echo "alias app_start_with_logs='docker-compose -f docker-compose-fixed-instrumented.yml up'">> ~/.bashrc
echo "alias app_stop='docker-compose -f docker-compose-fixed-instrumented.yml stop && docker-compose -f docker-compose-fixed-instrumented.yml rm -f'">> ~/.bashrc
echo "alias app_restart='app_stop && app_start'">> ~/.bashrc

echo "alias generating_logs='docker run -d  -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2'">>~/.bashrc
echo "Initialization, please wait" | wall -n

mkdir /root/app-files

echo "Workshop folder created !" | wall -n

echo "Cloning Application repository !" | wall -n

git clone https://github.com/DataDog/ecommerce-workshop /root/app-files

echo "Cloning Application repository: Successful " | wall -n

