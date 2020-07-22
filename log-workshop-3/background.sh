#!/bin/bash

mkdir /root/app-files
git clone https://github.com/l0k0ms/ecommerce-workshop /root/app-files
cd /root/app-files
git checkout gus/log-workshop
docker-compose pull

./gor --input-file-loop --input-file requests_0.gor --output-http "http://localhost:3000" >> /dev/null 2>&1