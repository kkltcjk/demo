docker run --privileged=true -itd --name bottlenecks -v /var/run/docker.sock:/var/run/docker.sock -v /tmp:/tmp -e CONDUCTOR=http://192.168.114.2:8888/api -e ETCD_HOST=192.168.114.2 -e ETCD_PORT=2379 -e DEBUG=true kkltcjk/bottlenecks:conductor /bin/bash

