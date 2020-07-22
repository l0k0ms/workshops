#!/bin/bash

mkdir /root/app-files
git clone https://github.com/DataDog/ecommerce-workshop /root/app-files
cd /root/app-files
docker-compose pull

./gor --input-file-loop --input-file requests_0.gor --output-http "http://localhost:3000" >> /dev/null 2>&1