#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres

while [ ! -f /ecommworkshop/deploy/docker-compose//docker-compose-fixed-instrumented.yml ]; do sleep 2; done

echo "Workshop content is here"

cd ecommworkshop/deploy/docker-compose/

source ~/.bashrc

clear

prepenvironment
