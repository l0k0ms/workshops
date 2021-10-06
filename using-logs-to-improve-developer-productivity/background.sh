#!/bin/bash

curl -sk https://datadoghq.dev/katacodalabtools/r?raw=true|bash

sleep 1

echo "Initialization, please wait" | wall -n

touch ~/.bashrc

echo "alias app_start='docker-compose -f docker-compose-fixed-instrumented.yml up -d'">> ~/.bashrc
echo "alias app_start_with_logs='docker-compose -f docker-compose-fixed-instrumented.yml up'">> ~/.bashrc
echo "alias app_stop='docker-compose -f docker-compose-fixed-instrumented.yml stop && docker-compose -f docker-compose-fixed-instrumented.yml rm -f'">> ~/.bashrc
echo "alias app_restart='app_stop && app_start'">> ~/.bashrc

echo "alias generating_traffic='cd ../ && ./gor --input-file-loop --input-file requests_0.gor --output-http \"http://localhost:3000\" >> /dev/null 2>&1 && cd ./docker-compose-files &'" >> ~/.bashrc
echo "alias creating_issue='docker kill docker-compose-files_db_1 >> /dev/null 2>&1 &'" >> ~/.bashrc

echo "alias generating_logs='docker run -d  -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2'">>~/.bashrc

statusupdate complete
