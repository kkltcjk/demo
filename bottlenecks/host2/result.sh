docker run -itd --privileged -v /var/run/docker.sock:/var/run/docker.sock -p 7777:5000 -v /home/kklt/os/pod.yaml:/etc/yardstick/pod.yaml -v /home/kklt/tmp:/tmp/yardstick/ -e CONDUCTOR=http://192.168.23.10:8888/api --name result kkltcjk/yardstick:result

