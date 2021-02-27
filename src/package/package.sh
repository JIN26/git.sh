#lib
    source /src/lib/*
#Jin
    mkdir ~/.Jin
    cd ~/.Jin
#Coneccion de internet "/lib"
    case $net in
        0)
            #Actualizacion
                sudo apt update && sudo apt upgrade
            #git
                sudo apt install git
            #Install gitsome cli
                sudo apt install gitsome
            #Install vim y neovim
                sudo apt install vim;
                sudo apt-get install neovim;
            #configuration of plugins
                #git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vumdle.vim

                #echo 'set rtp+=~/.vim/bundle/Vundle.vim
                #call vundle#begin()
                #let g:clang_c_options = '-std=gnu11'
                #Plugin 'VundleVim/Vundle.vim'

                #" (*) Aqui agregamos las líneas <Plugin> para incorporar nuevos plugins a Vim

                #call vundle#end() " required
                #filetype plugin indent on " required'>>~/.vim/plugins.vim;

                #echo 'so ~/.vim/plugins.vim'>>~/.vimrc/plugins.vim;
            #LLAVE ssh
                if [ -z $(command -v ssh) ]; then
                    ssh llave install.
                    ssh-keygen -t rsa -b 4096 -C "Angel_mantilla_26@hotmail.com"
                    eval $(ssh-agent -s)
                    ssh-add ~/.ssh/id_rsa
                fi
            #servidor apache2
                case $(command -v apache2) in
                    "")
                        apt-get install -y apache2
                        apt-get install -y apache2-doc
                        echo "
                        <VirtualHost *:81>
                            ServerName Jin
                            ServerAlias www.Jin.com
                            ServerAdmin webmaster@localhost
                            DocumentRoot /var/www/git.sh/src/www
                            DirectoryIndex index.php
                        </VirtualHost>">/etc/apache2/sites-available/Jin.conf
                        a2ensite Jin.conf
                        #mkdir /var/www/Jin
                        echo "$ip   jin">>/etc/hosts
                        echo "Listen 81">>/etc/apache2/ports.conf
                        service apache2 reload
                        #netstat -tuna
                        ;;
                esac
            #otros
                sudo snap install tree
                sudo apt install figlet
            #System type
                case "$OSTYPE" in
                    cygwin*)
                        ;;
                    linux-androideabi)
                        #!/data/data/com.termux/files/usr/bin/bash

                        #My configuration termux
                            sleep 2;
                        #storage
                            cd
                            termux-setup-storage;
                        #php
                            pkg install php;
                        #python
                            pkg install python2;
                            python2 Real-DNS;
                        #navegador desde terminal w3m
                            apt-get install w3m;
                        #api de termux
                            apt install termux-api;
                        #servidor openssh
                            apt install openssh;
                        #OS kali
                            pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh | bashh
                        #kali system init
                            echo '#!/bin/bash
                            cd ~/.Jin
                            ./phone.sh &;
                            ./vnc.sh &
                            cd kali;
                            ./start-kali.sh
                            exit'>~/kali.sh;
                            chmod +x kali.sh;
                        ;;
                    linux-gnu)
                        sleep 2;
                        #nodejs,npm y react-native con expo
                            sudo apt-get install -y nodejs
                            sudo apt install npm
                            sudo npm install -g n
                            sudo n estable
                            sudo npm install -g react-native-cli
                            sudo npm install -g react-native-app
                            sudo npm install expo-cli --global
                        #expo init clinica
                        #npx create-react-app clinica
                        #cd clinica
                        #exit
                        #npm start
                        ;;
                    linux-gnueabihf)
                        ;;
                    darwin*)
                        ;;
                esac
        *)
            echo -e "\n No Hay Conexion A Internet.\n"
    esac
