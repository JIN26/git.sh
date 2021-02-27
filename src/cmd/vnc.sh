#!/bin/bash

source src/lib/network.lib;
clear
logo

echo $net
case "$OSTYPE" in
    linux-androideabi) #phone
        setterm -foreground green;
        figlet -cf slant "$iptp" ||cowsay sorry
        figlet -cf slant "$ipt:8081" ||cowsay sorry
        termux-open "$iptp"
        php -S "$ipt:8081" -t  ~/storage/shared/Download/ &
        php -S "$iptp" -t src/webpack/
        ;;
    linux-gnu*) #laptop and phone internal kali
        setterm -foreground green;
        figlet -cf slant "$ipp" ||cowsay sorry
        google-chrome "$ipp"
        php -S "$ipp" -t src/webpack/
        ;;
esac
#sshfs localhost:/path/to/folder /path/to/mount/point
#ssh -R 80:192.168.200.2:8080 serveo.net;
