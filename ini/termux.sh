#!/data/data/com.termux/files/usr/bin/bash

#My configuration termux
apt install figlet;

#su
cd ~/.Jin;
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
#ip php
cd ~/.Jin
echo '<?php
function get_client_ip_env() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
        $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';

    return $ipaddress;
}

function get_client_ip_server() {
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if(isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';

    return $ipaddress;
}
echo 'IP address  es ' . get_client_ip_env() .' o  es ' . get_client_ip_server() . '<br>';
?>'>ip.php

#server phone
cd ~/.Jin
echo 'php -S localhost:8081 -t  $HOME/storage/shared/'?'/'>phone.sh;
chmod 777 phone.sh
#logo
cd $PREFIX/etc/;
rm motd;
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
logo

fi

PS1='Jin$ ''>bash.bashrc;

setterm -foreground green;
echo "####################";
figlet -f block logo;
echo "####################";

#storage
cd ~;
termux-setup-storage;

#pack
cd ~/.Jin
git clone https://github.com/3xploit666/packtermux;
cd packtermux;
chmod 755 *scriptpack.sh;
sh scriptpack.sh;
apt install util-linux;

wget http://pastebin.com/raw/3BKSBrZ5 -O install.sh;dos2unix install.sh;
chmod u+x install.sh;
./install.sh;

pkg install python2;
python2 Real-DNS;
apt-get install w3m;
pkg install php;
apt install termux-api;
apt install openssh;

git clone https://github.com/FELIPECAHM/CAHMSUDO.git
chmod +x sudo


git clone https://github.com/Anonymous-Zpt/T-root

#OS kali
#pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh | bashh

#kali init
cd ~;
echo '#!/bin/bash
curl ifconfig.me||cowsay sorry
cd ~/.Jin 
echo

./phone.sh &;
cd kali;
./start-kali.sh
exit'>kali.sh;
chmod 777 kali.sh;
