#!/bin/bash
case "$OSTYPE" in
    cygwin*)
        ;;
    linux-androideabi)
        vncserver-stop
        vncserver-start
        ;;
    linux-gnu)
        ;;
    darwin*)
        ;;
esac
php -S localhost:8080 -t ../html/
#sshfs localhost:/path/to/folder /path/to/mount/point
# ssh -R 80:192.168.200.2:8080 serveo.net;
exit
