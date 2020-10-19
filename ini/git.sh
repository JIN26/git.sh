#!/bin/bash 

#My configuration git 
apt install git;
git config --global alias.jin "https://github.com/JIN26/";
git config --global alias.l "log";
git config --global alias.s "status";
git config --global alias.c "commit -m";
git config --global alias.lo "log --oneline --decorate --all --graph";
git config --global alias.p "push -u origin master";
git config --global alias.d "https://github.com/JIN26";
git config --global user.email "Angelmantilla26@gmail.com";
git config --global user.name "JIN26";
git config -l;