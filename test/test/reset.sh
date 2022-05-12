docker-compose down
docker rm -f $(docker ps -a -q)
docker volume rm $(docker volume ls -q)
docker rmi -f $(docker images -aq)
# docker build ./mongo-setup/ -t mongo-setup:0.0.1
# docker-compose up

docker build "./mongo-setup" -t mongo-setup:0.0.1
# docker run mongo-setup
docker tag mongo-setup:0.0.1 harborreg-2.northeurope.cloudapp.azure.com/library/mongo-setup:0.0.3
docker push harborreg-2.northeurope.cloudapp.azure.com/library/mongo-setup:0.0.3