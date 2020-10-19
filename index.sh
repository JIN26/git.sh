#!/bin/bash

read -p "Que tipo de lenguaje quieres usar $ " password
echo "$password"

sleep 5

case "$OSTYPE" in
    cygwin*)
        alias open="cmd /c start"
        ;;
    linux-androideabi)
        alias start="xdg-open"
        alias open="xdg-open"
        clear
        echo "$OSTYPE";
        sleep 2;
        cd ini;
        ./termux.sh
        ;;
    linux-gnu)
        clear;
        echo "$OSTYPE";
        sleep 2;
        cd ini;
        ./linux.sh
        echo $PWD;
        ;;
    darwin*)
        alias start="open"
        echo "$OSTYPE";
        ;;
esac

