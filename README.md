docker-rrrspec-example
======================

## Build and run

```
$ ./build.sh
$ ./run
```

## Run tests

```
$ docker run -i -t --volumes-from rrrspec-volume --link rrrspec-redis:cache --link rrrspec-mysql:db example/client /bin/bash

root@c6c6c8f640d0:/# rrrspec-client nodes
Loading: /opt/lib/rrrspec-client-config.rb
Workers:
    rrrspec:worker:36fe1a2fac6a
    rrrspec:worker:433fb12b424e
    rrrspec:worker:edf55091ba98

root@c6c6c8f640d0:/# rrrspec-client start --rsync-name ''
Loading: /opt/lib/rrrspec-client-config.rb
1/3) Making a package...
rsync --compress --times --recursive --links --perms --inplace --delete /opt/project/sample/ /opt/rsyncdir/
2/3) Uploading the package...
3/3) Enqueue the taskset...
Your request is successfully enqueued!
rrrspec:taskset:58412516-b8dd-11e3-b8b5-f6f665b5a202

root@c6c6c8f640d0:/# rrrspec-client actives
Loading: /opt/lib/rrrspec-client-config.rb
rrrspec:taskset:58412516-b8dd-11e3-b8b5-f6f665b5a202

root@c6c6c8f640d0:/# rrrspec-client actives
Loading: /opt/lib/rrrspec-client-config.rb
```
