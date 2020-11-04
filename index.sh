#!/bin/bash

function mostrar {
    echo "Code: $code"
    sh vnc.sh;
}

#Actualizacion
apt update && apt upgrade;

#Jin
PWDJIN=$PWD;
mkdir ~/.Jin
cd /bin
ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo.sh

#Servidor localhost
ln -s $PWDJIN/html/index.html .index.html
chmod 777 .index.html

clear
~/.Jin/logo.sh

read -p "Que tipo de lenguaje quieres usar $ " code
#if[$code="123"];then
    mostrar
#fi

# ssh llave install.
#ssh-keygen -t rsa -b 4096 -C "Angel_mantilla_26@hotmail.com"
eval $(ssh-agent -s)
#ssh-add ~/.ssh/id_rsa

#git
sh ini/git.sh

#editor
sh ini/nvim.sh

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
