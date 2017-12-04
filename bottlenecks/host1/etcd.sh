docker run -itd -p 2379:2379 -p 2380:2380 -v /home/kklt/etcd:/data --name node-1 elcolio/etcd:latest -name node-1 -listen-client-urls http://0.0.0.0:2379 -advertise-client-urls http://192.168.114.2:2379 -listen-peer-urls http://0.0.0.0:2380 -initial-advertise-peer-urls http://192.168.114.2:2380 -initial-cluster-token node-1 -initial-cluster node-1=http://192.168.114.2:2380,node-2=http://192.168.131.2:2380 -initial-cluster-state new
docker run -itd --name=registrator --net=host --volume=/var/run/docker.sock:/tmp/docker.sock gliderlabs/registrator:latest -ip="192.168.114.2" etcd://192.168.114.2:2379
