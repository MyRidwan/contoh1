#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
figlet -f small Panel SSH-WS
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ PANEL SSH-WS ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e "     [01]  Create SSH & OpenVPN Account"
echo -e "     [02]  Trial Account SSH & OpenVPN"
echo -e "     [03]  Renew SSH & OpenVPN Account"
echo -e "     [04]  Delete SSH & OpenVPN Account"
echo -e "     [05]  Check User Login SSH & OpenVPN"
echo -e "     [06]  Daftar Member SSH & OpenVPN"
echo -e "     [07]  Delete User Expired SSH & OpenVPN"
echo -e "     [08]  Set up Autokill SSH"
echo -e "     [09]  Cek Users Who Do Multi Login SSH"
echo -e "     [10] Restart Service Dropbear, Squid3"
echo -e "     [xx]  Exit"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ PANEL SSH-WS ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
read -p "     Select From Options [1-10 or x] :  " port
echo -e ""
case $port in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
cek
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
