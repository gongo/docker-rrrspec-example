#!/bin/sh

set -e

CONTAINER_DIR=$(cd $(dirname $0) && pwd)/containers

docker build -t example/base    ${CONTAINER_DIR}/base

docker build -t example/volume  ${CONTAINER_DIR}/volume
docker build -t example/redis   ${CONTAINER_DIR}/redis
docker build -t example/mysql   ${CONTAINER_DIR}/mysql

docker build -t example/project ${CONTAINER_DIR}/project
docker build -t example/server  ${CONTAINER_DIR}/server
docker build -t example/worker  ${CONTAINER_DIR}/worker
docker build -t example/client  ${CONTAINER_DIR}/client
docker build -t example/web     ${CONTAINER_DIR}/web
