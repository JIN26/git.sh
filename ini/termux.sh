#!/data/data/com.termux/files/usr/bin/bash
#
#My configuration termux

cd $HOME;
mkdir .Jin;
cd $HOME/.Jin;
apt install figlet;

#su
git clone https://gitlab.com/st42/termux-sudo;
cd termux-sudo;
chmod 711 sudo;
cp sudo $PREFIX/bin;
cp sudo $PREFIX/bin/applets;
su;
setterm -foreground green;
echo "####################";
figlet -f block su;
echo "####################";

#logo
cd $PREFIX/etc/;
rm motd;
rm bash.bashrc;
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
cd $HOME/.Jin
./logo.sh
cd $HOME/
fi

PS1='Jin$ ''>>bash.bashrc;

setterm -foreground green;
echo "####################";
figlet -f block logo;
echo "####################";

#storage
cd $HOME
termux-setup-storage;

#git
./git.sh

#editor
./nvim.sh

pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-xfce.sh | bash
