#!/usr/bin/env bash

docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
docker volume prune -f
docker network prune -f
