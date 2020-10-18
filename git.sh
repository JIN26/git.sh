#!/bin/bash 

#My configuration git 
apt install git;
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages
apt update
apt install gh
apt install vim;
apt-get install neovim;
snap install tree;
git config --global alias.jin "https://github.com/JIN26/";
git config --global alias.l "log";
git config --global alias.s "status";
git config --global alias.c "commit -m";
git config --global alias.lo "log --oneline --decorate --all --graph";
git config --global alias.p "push -u origin master";
git config --global user.email "Angelmantilla26@gmail.com";
git config --global user.name "JIN26";
git config -l;
apt update;
apt upgrade;
clear;
