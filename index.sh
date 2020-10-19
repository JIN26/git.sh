#!/bin/bash

case "$OSTYPE" in
    cygwin*)
        alias open="cmd /c start"
        ;;
    linux-androideabi)
        alias start="xdg-open"
        alias open="xdg-open"
        echo "$OSTYPE";
        cd  ;cd Desktop;
        mkdir 
        ;;
    linux-gnu)
        echo "$OSTYPE";
        cd  ;cd Desktop;
        mkdir 
        ;;
    darwin*)
        alias start="open"
        echo "$OSTYPE";
        ;;
esac

