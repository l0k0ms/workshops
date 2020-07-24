#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

while [ ! -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented.yml ]; do sleep 2; done

clear

source ~/.bashrc

clear

cd /root/app-files/docker-compose-files

clear
