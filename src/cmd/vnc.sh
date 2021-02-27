#!/bin/bash
PWDJIN=$PWD/src;#Direccion del proyecto

source $PWDJIN/lib/network.lib

setterm -foreground green;
figlet -cf slant "$ipp" ||cowsay sorry
read
#chequeo de packete apache2
case $(command -v apache2) in
    "")
    case $jk in
        0)
            apt-get install -y apache2
            apt-get install -y apache2-doc
            ;;
        *)
            -e "\n$r[-]$b1 banner:$r No Hay Conexion A Internet.\n$b"
    esac
    echo "
    <VirtualHost *:80>
        ServerName Jin
        ServerAlias www.Jin.com
        ServerAdmin webmaster@localhost
        DocumentRoot /home/jin/Downloads/0/git.sh/src/webpack/
        DirectoryIndex index.php
    </VirtualHost>">/etc/apache2/sites-available/Jin.conf;
    a2ensite Jin.conf
    mkdir /var/www/Jin
    cd /var/www/Jin
    sudo ln -s /home/jin/Downloads/0/git.sh/src/webpack/index.php index.php
    echo "127.0.0.1     jin">>/etc/hosts
    echo "Listen 81">>/etc/apache2/ports.conf
    service apache2 reload
    netstat -tuna
esac
case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        vncserver-stop
        vncserver-start
        php -S "${local:0:11}:8080" -t ../webpack/
        ;;
    linux-gnu)
        google-chrome "${local:0:11}:8080"
        php -S "${local:0:11}:8080" -t ../webpack/
        ;;
    darwin*)
        ;;
esac

#sshfs localhost:/path/to/folder /path/to/mount/point
#ssh -R 80:192.168.200.2:8080 serveo.net;

exit
