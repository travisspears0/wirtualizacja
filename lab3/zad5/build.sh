#!/bin/bash

docker build -t travisspears0/laborki2:latest .
docker run -ti travisspears0/laborki2

container_id=`docker ps -a | grep travisspears0/laborki2 | awk '{ print $1 }'`
docker start $container_id
docker attach $container_id
