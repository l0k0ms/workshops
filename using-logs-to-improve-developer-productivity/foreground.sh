#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

while [ ! -f /root/app-files/deploy/docker-compose-files/docker-compose-fixed-instrumented.yml ]; do sleep 2; done

echo "Cloning Application repository: Successful"

cd /root/app-files/deploy/docker-compose/
source ~/.bashrc

clear

prepenvironment
