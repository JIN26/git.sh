#!/bin/bash

local=$(hostname -I)
setterm -foreground green;
figlet -cf slant "${local:0:11}:8080" ||cowsay sorry

case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        vncserver-stop
        vncserver-start
        php -S "${local:0:11}:8080" -t ../webpack/php/
        ;;
    linux-gnu)
        google-chrome "${local:0:11}:8080"
        php -S "${local:0:11}:8080" -t ../webpack/php/
        ;;
    darwin*)
        ;;
esac

#sshfs localhost:/path/to/folder /path/to/mount/point
#ssh -R 80:192.168.200.2:8080 serveo.net;

exit
