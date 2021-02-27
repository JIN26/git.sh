#!/bin/bash

#logo
    if [ -z $(ls ~/.Jin) ]; then
        sudo ln -s $PWDJIN/img/logo.sh ~/.Jin/logo
        chmod +x logo
        sudo cp logo $PREFIX/bin
        sudo cp logo $PREFIX/bin/applets
    fi
#package.sh
    chmod +x src/package/package.sh
    . src/package/package.sh
#Servidor local $ipp
    chmod +x src/cmd/vnc.sh
    . src/cmd/vnc.sh &
