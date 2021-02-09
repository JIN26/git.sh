#!/bin/bash

curl ifconfig.me||cowsay sorry
php -S 192.168.0.4:8080 -t ../
#sshfs localhost:/path/to/folder /path/to/mount/point
# ssh -R 80:192.168.200.2:8080 serveo.net;
case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        vncserver-stop
        vncserver-start
        ;;
    linux-gnu)
        google-chrome http://192.168.0.4:8080
        ;;
    darwin*)
        ;;
esac

exit
