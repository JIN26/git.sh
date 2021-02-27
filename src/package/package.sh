#lib
    source /src/lib/*
#Jin
    mkdir ~/.Jin
    cd ~/.Jin
case $net in #Coneccion de internet "/lib"
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
        #otros
            sudo snap install tree
            sudo apt install figlet
        #System type
            case "$OSTYPE" in
                cygwin*)
                    ;;
                linux-androideabi)
                    sleep 2;
                    #storage
                        cd
                        termux-setup-storage;
                    pkg install python2;
                    #php
                        pkg install php;
                    #python
                        python2 Real-DNS;
                    #navegador desde terminal w3m
                        apt-get install w3m;
                    #api de termux
                        apt install termux-api;
                    #servidor openssh
                        apt install openssh;
                    #OS kali
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh | bashh

                    chmod +x termux.sh
                    sh termux.sh
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
                darwin*)
                    ;;
            esac
   *)
        echo -e "\n No Hay Conexion A Internet.\n"
esac
