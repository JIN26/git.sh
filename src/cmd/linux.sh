#!/bin/bash

#Install github cli
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

#nodejs,npm y react-native con expo
sudo apt-get install -y nodejs
sudo apt install npm
sudo npm install -g n
sudo n estable
sudo npm install -g react-native-cli
sudo npm install -g react-native-app
sudo npm install expo-cli --global

#otros
#sudo snap install tree;

#expo init clinica
#npx create-react-app clinica
#cd clinica
#exit
#npm start
