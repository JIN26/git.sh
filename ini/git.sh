#!/bin/bash

#My configuration git
apt install git;
git config --global alias.l "log --stat";
git config --global alias.s "status";
git config --global alias.lo "log --oneline --decorate --all --graph";
git config --global alias.c "commit -am";
git config --global alias.p "push -u origin";
git config --global alias.d "https://github.com/JIN26/"
git config --global alias.github "git@github.com:JIN26/git.sh.git";
git config --global user.email "Angelmantilla26@gmail.com";
git config --global user.name "JIN26";
git config -l;
