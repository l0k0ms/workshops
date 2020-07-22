#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
# while [ ! -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented-no-log.yml ]; do sleep 2; done

until [ -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented-no-log.yml ]; do sleep 2; done

source ~/.bashrc

clear

cd /root/app-files/docker-compose-files

clear

app_start

clear

prep-environment