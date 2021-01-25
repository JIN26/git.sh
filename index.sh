#!/bin/bash

function mostrar {
    echo "Code: $code"
    curl ifconfig.me||cowsay sorry
    echo
    cd ini
    chmod 777 vnc.sh
    ./vnc.sh &
    cd ..
}

#Actualizacion
sudo apt update && apt upgrade;

#Jin
PWDJIN=$PWD;
mkdir ~/.Jin
cd /bin
sudo ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo
cd ~/.Jin
sudo ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo

#Servidor localhost
sudo ln -s $PWDJIN/html/index.html .index.html
chmod 777 .index.html

clear
logo
cd $PWDJIN

read -p "Que tipo de lenguaje quieres usar $ " code
#if[$code="123"];then
    mostrar
#fi

# ssh llave install.
#ssh-keygen -t rsa -b 4096 -C "Angel_mantilla_26@hotmail.com"
eval $(ssh-agent -s)
#ssh-add ~/.ssh/id_rsa

#git
sudo sh ini/git.sh

#editor
sudo sh ini/nvim.sh
google-chrome http://localhost:8080


case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        sleep 2;
        cd ini;
        sh termux.sh
        ;;
    linux-gnu)
        sleep 2;
        cd ini;
        chmod 777 linux.sh
        sh linux.sh
        ;;
    darwin*)
        ;;
esac
