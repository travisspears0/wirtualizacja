#!/bin/bash

name="inz"

docker build -t travisspears0/${name}:latest .
docker run -ti travisspears0/${name}

container_id=`docker ps -a | grep travisspears0/${name} | awk '{ print $1 }'`
docker start $container_id
docker attach $container_id
