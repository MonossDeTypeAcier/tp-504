docker build -t im-nginx-lb -f Dockerfile .
mkdir shared1
mkdir shared2
echo "<h1>Hello 1</h1>" >> shared1/index.html
echo "<h1>Hello 2</h1>" >> shared2/index.html
docker run \
    --name nginx1 -d \
    -p 81:80 \
    -v /home/mor/tp-r504/TP-LB/tp-A/shared1:/usr/share/nginx/html \
    nginx:latest

docker run -d \
    --name nginx2 \
    -p 82:80 \
    -v /home/mor/tp-r504/TP-LB/tp-A/shared2:/usr/share/nginx/html \
    nginx:latest
docker run -d \
    --name nginxLB \
    -p 83:80 \
    im-nginx-lb
