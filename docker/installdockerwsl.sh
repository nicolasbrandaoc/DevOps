







### Como instalar o docker no Ubuntu:

1- Atualize os pacotes do sistema:

 **`sudo apt update`**
2- Instale as dependências necessárias:

 **`sudo apt install apt-transport-https ca-certificates curl software-properties-common`**
3- Adicionar a chave GPG oficial do Docker:
**`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`**

4- Adicionar o repositório do Docker às fontes de software:
**`echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`**

5- Atualizar novamente os pacotes do sistema:

**`sudo apt update`**
6- Instalar o Docker:
**`sudo apt install docker-ce docker-ce-cli containerd.io`**

7- Verificar a Instalação:
`docker --version`