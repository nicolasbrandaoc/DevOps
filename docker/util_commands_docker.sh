



access container cli :

docker exec -it meu_container /bin/bash

docker exec -u root -it 86e476f995f5 /bin/bash






systemctl start/stop docker     #start/stop docker service
systemctl enable docker         #enable docker running when OS start
docker pull                     #pull Docker image
docker ps                       #list all running Containers
docker ps -a                    #list all Containers
docker start/stop CONTAINER ID  #start/stop Container
docker rm CONTAINER ID          #delete Container by ID
docker kill CONTAINER ID        #shut down Container
docker images                   #list all images have been downloaded
