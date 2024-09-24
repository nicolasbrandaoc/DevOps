



### Como instalar o Portainer Community Edition:

1- Crie um novo volume:

`docker volume create portainer-data`

2- Baixe e instale o container do Portainer Server:

`docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`

4- Confira se o container está rodando:

`docker ps`

5- Acesso web:

`https://localhost:9443`




