#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
# while [ ! -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented-no-log.yml ]; do sleep 2; done

until [ -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented-no-log.yml ]; do sleep 2; done

clear

cd /root/app-files/docker-compose-files

clear

docker-compose -f docker-compose-fixed-instrumented-no-log.yml up -d

clear

prep-environment