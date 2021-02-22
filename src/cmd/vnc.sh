#!/bin/bash

jk="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)" #Coneccion de internet
local=$(hostname -I)
setterm -foreground green;
figlet -cf slant "${local:0:12}:8080" ||cowsay sorry

#chequeo de packete apache2
case $(command -v apache2) in
    "")
    case $jk in
        0)
        ;;
        *)
            -e "\n$r[-]$b1 banner:$r No Hay Conexion A Internet.\n$b"
    esac
    clear
    apt-get install -y apache2
    apt-get install -y apache2-doc
    cd /etc/apache2/sites-available/
    echo "
    <VirtualHost *:80>
        ServerName Jin
        ServerAlias www.Jin.com
        ServerAdmin webmaster@localhost
        DocumentRoot /home/jin/Downloads/0/git.sh/src/webpack/
        DirectoryIndex index.php
    </VirtualHost>">Jin.conf;
    a2ensite Jin.conf
    cd /var/www/
    mkdir Jin
    cd Jin
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
        php -S "${local:0:12}:8080" -t ../webpack/
        ;;
    linux-gnu)
        google-chrome "${local:0:12}:8080"
        php -S "${local:0:12}:8080" -t ../webpack/
        ;;
    darwin*)
        ;;
esac

#sshfs localhost:/path/to/folder /path/to/mount/point
#ssh -R 80:192.168.200.2:8080 serveo.net;

exit
