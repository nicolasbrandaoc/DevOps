#!/bin/bash

#Script para instalar o wordpress e configurar em um linux.

#Script desenvolvido por Nícolas Brandão
#GitHub: nicolasbrandaoc


#Coloque permissão "chmod +x" para executar o bash!

# Função para verificar se o locale pt_BR.UTF-8 está disponível
check_locale() {
    echo "Verificando locais disponíveis..."
    if locale -a | grep -q "pt_BR.UTF-8"; then
        echo "O locale pt_BR.UTF-8 já está instalado."
    else
        echo "O locale pt_BR.UTF-8 não encontrado. Instalando..."
        sudo locale-gen pt_BR.UTF-8
        echo "Locale pt_BR.UTF-8 instalado com sucesso."
    fi
}

# Função para reconfigurar os locales
reconfigure_locales() {
    echo "Reconfigurando os locales..."
    sudo dpkg-reconfigure locales
    echo "Marque apenas o locale pt_BR.UTF-8 e pressione OK."
}

# Função para atualizar o idioma padrão
update_locale() {
    echo "Atualizando o idioma padrão..."
    sudo update-locale LANG=pt_BR.UTF-8 || echo "Erro ao
