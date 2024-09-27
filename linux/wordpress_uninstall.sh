#!/bin/bash

#Script para instalar o wordpress e configurar em um linux.

#Script desenvolvido por Nícolas Brandão
#GitHub: nicolasbrandaoc


#Coloque permissão "chmod +x" para executar o bash!

# Verificar se o usuário está na pasta 'public'
if [[ ! "$(basename "$PWD")" == "home" ]]; then
    echo "Você deve estar na pasta 'home' para executar este script."
    echo "Por favor, navegue até a pasta 'home' e tente novamente."
    exit 1
fi

# Confirmar a remoção
read -p "Você realmente deseja desinstalar o WordPress? Isso irá remover todos os arquivos. (y/n): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Desinstalação cancelada."
    exit 0
fi

# Remover a pasta public
echo "Removendo a pasta 'public'..."
rm -rf public

echo "Desinstalação do WordPress concluída."
