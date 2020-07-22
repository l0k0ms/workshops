#!/bin/bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
clear
while [ ! -f /root/app-files/docker-compose-files/docker-compose-broken-no-apm-instrumentation.yml ]; do sleep 2; done
cd /root/app-files/docker-compose-files
clear
docker-compose -f docker-compose-broken-no-apm-instrumentation.yml up -d
clear
prep-environment