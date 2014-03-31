#!/bin/sh

docker stop $(docker ps -a | awk '/rrrspec-/ { print $1 }')
docker rm $(docker ps -a -q)
