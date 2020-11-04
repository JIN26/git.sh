#!/bin/bash

#Install github cli
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages
apt update
apt install gh

#nodejs,npm y react-native con expo
sudo apt-get install -y nodejs
sudo apt install npm
sudo npm install -g n
sudo n estable
sudo npm install -g react-native-cli
sudo npm install -g react-native-app
sudo npm install expo-cli --global

#alias de linux
echo "#User default
alias vim="vim -p"
~/.Jin/logo.sh

case "$OSTYPE" in
    cygwin*)
        alias open="cmd /c start"
        ;;
    linux-androideabi)
        alias start="xdg-open"
        alias open="xdg-open"
        ;;
    linux-gnu)
        alias start="xdg-open"
        alias open="xdg-open"
        ;;
    darwin*)
        alias start="open"
        ;;

esac">~/.bash_aliases
echo " # Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi">>~/.bashrc

#otros
snap install tree;

#expo init clinica
#npx create-react-app clinica
#cd clinica
#exit
#npm start
