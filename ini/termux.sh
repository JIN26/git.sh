#My configuration termux

cd $PREFIX;
mkdir Jin;
cd $PREFIX/Jin;
apt install figlet;

git clone https://gitlab.com/st42/termux-sudo;
cd termux-sudo;
chmod 700 sudo;
cp sudo /data/data/com.termux/files/usr/bin;
cp sudo /data/data/com.termux/files/usr/bin/applets;
su;

setterm -foreground green;
echo "####################";
figlet -f block su;
echo "####################";

cd $PREFIX/etc/;
rm motd;
rm bash.bashrc;
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
cd $PREFIX/Jin/
./logo.sh
cd $HOME/
fi

PS1='Jin$ ''>>bash.bashrc;

setterm -foreground green;
echo "####################";  
figlet -f block logo;
echo "####################";

cd $HOME
termux-setup-storage;


