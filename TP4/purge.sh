docker kill $(docker ps -aq)
docker rm $(docker ps -aq)

docker system prune -f
docker volume prune -f