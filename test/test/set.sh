docker rmi -f $(docker images -aq)
docker rm -vf $(docker ps -aq)
docker volume prune