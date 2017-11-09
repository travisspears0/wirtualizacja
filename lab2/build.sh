#!/bin/bash

docker build -t travisspears0/laborki:latest .
docker run -ti travisspears0/laborki

container_id=`docker ps -a | grep travisspears0/laborki | awk '{ print $1 }'`
docker start $container_id
docker attach $container_id
