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
apt update && apt upgrade;

#Jin
PWDJIN=$PWD;
mkdir ~/.Jin
cd /bin
sudo ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo
cd ~/.Jin
sudo ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo

#Jin
PWDJIN=$PWD;
mkdir ~/.Jin
cd ~/.Jin
ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo
cp logo $PREFIX/bin
cp logo $PREFIX/bin/applets

#Servidor localhost
ln -s $PWDJIN/html/index.html index.php
chmod 777 index.php
cp index.php ~/storage/shared/?

#ip php
ln -s $PWDJIN/html/php/ip.php ip.php
chmod 777 ip.php

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
sh ini/git.sh

#editor
sh ini/nvim.sh

case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        sleep 2;
        cd ini;
	chmod 777 termux.sh
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
