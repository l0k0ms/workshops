#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

clear

printf '\nPreparing the environment\n'

until $(! -f /root/app-files/docker-compose-files/docker-compose-fixed-instrumented-no-log.yml); do
    printf '.'
    sleep 2
done

cd /root/app-files/docker-compose-files

clear

docker-compose -f docker-compose-fixed-instrumented-no-log.yml up -d

clear

prep-environment