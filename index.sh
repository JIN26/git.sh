#!/bin/bash

function mostrar {
    echo "Code: $code"
    sh vnc.sh;
}

#Actualizacion
apt update && apt upgrade;

#Servidor localhost
cp -s html/index.html ../../
mv ../../index.html ../../.index.html

clear
sh img/logo.sh; 

read -p "Que tipo de lenguaje quieres usar $ " code
#if[$code="123"];then
    mostrar
#fi

# ssh llave install
#ssh-keygen -t rsa -b 4096 -C "Angel_mantilla_26@hotmail.com"
eval $(ssh-agent -s)
#ssh-add ~/.ssh/id_rsa

#git
./git.sh

#editor
./nvim.sh

clear;

case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        sleep 2;
        cd ini;
        ./termux.sh
        ;;
    linux-gnu)
        sleep 2;
        cd ini;
        ./linux.sh
        ;;
    darwin*)
        ;;
esac