#!/bin/bash

#Script para instalar o wordpress e configurar em um linux.

#Script desenvolvido por Nícolas Brandão
#GitHub: nicolasbrandaoc



echo "         __               __                 __                            __ ";
echo " .-----.|__|.----..-----.|  |.---.-..-----. |  |--..----..---.-..-----..--|  |.---.-..-----. ";
echo " |     ||  ||  __||  _  ||  ||  _  ||__ --| |  _  ||   _||  _  ||     ||  _  ||  _  ||  _  | ";
echo " |__|__||__||____||_____||__||___._||_____| |_____||__|  |___._||__|__||_____||___._||_____| ";




#Coloque permissão "chmod +x" para executar o bash!

# Verificar se o usuário está na pasta 'home'
if [[ ! "$(basename "$PWD")" == "home" ]]; then
    echo "Você deve estar na pasta 'home' para executar este script."
    echo "Por favor, navegue até a pasta 'home' e tente novamente."
    exit 1
fi

# Função para perguntar se o usuário deseja editar o wp-config.php
function edit_wp_config() {
    read -p "Você deseja editar as credenciais do banco de dados? (y/n): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        nano public/wp-config.php
    fi
}

# Baixar o arquivo do WordPress
echo "Baixando o WordPress..."
wget -q https://wordpress.org/latest.tar.gz

# Verificar se o download foi bem-sucedido
if [[ $? -ne 0 ]]; then
    echo "Erro ao baixar o WordPress."
    exit 1
fi
sleep 2

# Descompactar o arquivo
echo "Descompactando o arquivo..."
tar -zxvf latest.tar.gz
sleep 2

# Remover a pasta public, se existir
if [[ -d "public" ]]; then
    echo "Removendo a pasta 'public'..."
    rm -rf public
fi
sleep 2

# Renomear a pasta wordpress para public
echo "Renomeando a pasta 'wordpress' para 'public'..."
mv wordpress public
sleep 2

# Copiar os arquivos do banco de dados
echo "Copiando o arquivo de configuração do banco de dados..."
cp public/wp-config-sample.php public/wp-config.php
sleep 2

# Perguntar se o usuário deseja editar as credenciais do banco de dados
edit_wp_config
sleep 2

# Finalizar a instalação
echo "Instalação do WordPress concluída. Siga as instruções na interface web para finalizar a instalação."





