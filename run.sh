#!/bin/sh

RUN_OPTION="--link rrrspec-redis:cache --link rrrspec-mysql:db --volumes-from rrrspec-volume"

  # Run storage containers

    docker run -d --name rrrspec-redis  example/redis
    docker run -d --name rrrspec-volume example/volume
    docker run -d --name rrrspec-mysql  example/mysql
    sleep 2

  # Run server (master)

    docker run -d --name rrrspec-master ${RUN_OPTION} example/server

  # Run server (worker)

    for i in $(seq 1 3) ; do
        docker run -d --name rrrspec-worker${i} ${RUN_OPTION} example/worker
    done

  # Run server (web)

    docker run -d --name rrrspec-web -p 9292:9292 ${RUN_OPTION} example/web

cat <<EOF
1. Launch client container

  host$ docker run -i -t ${RUN_OPTION} example/client /bin/bash

2. Run test

  container# rrrspec-client start --rsync-name ''

3. Show report page.

  access to web container (http://localhost:9292)
EOF
