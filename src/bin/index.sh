#!/bin/bash

PWDJIN=$PWD;#Direccion del proyecto

#Actualizacion
#sudo apt update && sudo apt upgrade;

#Jin
if [ -e ~/.Jin ]; then
mkdir ~/.Jin
cd ~/.Jin
fi
#logo
if [ -e ~/.Jin/logo ]; then
sudo ln -s $PWDJIN/img/logo.sh logo
chmod 777 logo
sudo cp logo $PREFIX/bin
sudo cp logo $PREFIX/bin/applets
fi
#Servidor localhost
if [ -e ~/.Jin/index ]; then
sudo ln -s $PWDJIN/index.php index
chmod 777 index
sudo cp index ~/Desktop
fi

logo
cd $PWDJIN
cd ../cmd
chmod 777 vnc.sh
./vnc.sh &

if [$(command -v apache2)==""]; then
ssh llave install.
ssh-keygen -t rsa -b 4096 -C "Angel_mantilla_26@hotmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
fi

#git
sh git.sh

#editor
sh nvim.sh

case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        sleep 2;
	    chmod 777 termux.sh
        sh termux.sh
        ;;
    linux-gnu)
        sleep 2;
        chmod 777 linux.sh
        #sh linux.sh
        ;;
    darwin*)
        ;;
esac
