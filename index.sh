#!/bin/bash
source src/lib/*
PWDJIN=$PWD;#Direccion del proyecto
chmod +x $PWDJIN/src/cmd/*

case "$OSTYPE" in
    linux-androideabi)
        #!/data/data/com.termux/files/usr/bin/bash

        #My configuration termux

        #create server phone
        echo 'php -S $ip:8081 -t  $HOME/storage/shared/Download/'>~/.Jin/phone.sh;
        chmod +x phone.sh

        #kali system init
        echo '#!/bin/bash
        cd ~/.Jin
        ./phone.sh &;
        ./vnc.sh &
        cd kali;
        ./start-kali.sh
        exit'>~/kali.sh;
        chmod +x kali.sh;
        ;;
    linux-gnu)
        ;;
    *)
esac

#logo
if [ -z $(ls ~/.Jin) ]; then
    sudo ln -s $PWDJIN/img/logo.sh ~/.Jin/logo
    chmod +x logo
    sudo cp logo $PREFIX/bin
    sudo cp logo $PREFIX/bin/applets
fi

clear
logo
#Servidor local $ipp
chmod +x $PWDJIN/src/cmd/vnc.sh
./vnc.sh &
