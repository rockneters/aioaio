#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
                echo "You need to run this script as root"
                exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
                echo "OpenVZ is not supported"
                exit 1
fi    

apt update  
apt-get install curl wget screen -y

#install v2ray
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/install.sh && chmod +x install.sh && ./install.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/bbr.sh && chmod +x bbr.sh && ./bbr.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/ins-menu.sh && chmod +x ins-menu.sh && ./ins-menu.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/ins-wg.sh && chmod +x ins-wg.sh && ./ins-wg.sh
cd
wget https://raw.githubusercontent.com/rockneters/aioaio/main/install/ins-ssr.sh && chmod +x ins-ssr.sh && ./ins-ssr.sh
cd
rm -f ssh-vpn.sh
rm -f ssr.sh
rm -f install.sh
rm -f websocket.sh
rm -f bbr.sh
rm -f ins-menu.sh
rm -f ins-wg.sh
rm -f ins-ssr.sh
sleep 0.8
clear
neofetch
menu

