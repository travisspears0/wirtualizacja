#!/bin/bash

docker rm $(docker ps -aq)
docker rmi $(docker images -aq | grep -v 196e0ce0c9fb)
