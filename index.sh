#!/bin/bash
function mostrar {
    echo "Code: $code"
}
clear
sh vnc.sh;
sh img/logo.sh; 
read -p "Que tipo de lenguaje quieres usar $ " code
if[$code="123"];then
    mostrar
fi

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

