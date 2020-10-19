#!/bin/bash

#Jin
cd ../img
sudo mkdir $HOME/.Jin
sudo cp logo.sh $HOME/.Jin


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

#git
./git.sh

#editor
./nvim.sh

#otros
snap install tree;
apt update;
apt upgrade;
clear;

#expo init clinica
#npx create-react-app clinica
#cd clinica
#exit
#npm start


