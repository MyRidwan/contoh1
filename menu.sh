#!/bin/bash

clear

if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "It looks like you are not running this installer on Debian, Ubuntu or Centos system"
	exit
fi
color3='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipv4.icanhazip.com )
	echo""
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
    echo -e "\E[44;1;39m          ⇱ SCRIPT BY RIDWAN ⇲          \E[0m"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
	echo " "
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU Model:\e[0m $cname"
	echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem Uptime:\e[0m $up"
	echo -e "\e[032;1mIsp Name:\e[0m $ISP"
	echo -e "\e[032;1mCity:\e[0m $CITY"
	echo -e "\e[032;1mTime:\e[0m $WKT"
	echo -e "\e[033;1mIPVPS:\e[0m $IPVPS"
	date | lolcat
	echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ MENU LAYANAN ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e "Menu Utama" | lolcat -a -d 10

echo -e " [01]  Control Panel SSH & OVPN"
echo -e " [02]  Control Panel Wireguard"
echo -e " [03]  Control Panel L2TP & PPTP"
echo -e " [04]  Control Panel SSTP"
echo -e " [05]  Control Panel SSR & Shadowsocks"
echo -e " [06]  Control Panel Vmess/V2ray"
echo -e " [07]  Control Panel Vless"
echo -e " [08]  Control Panel Trojan"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ MENU TAMBAHAN ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e "Menu Tambahan" | lolcat -a -d 10

echo -e " [09]   Add Subdomain Host For VPS     [19] Speedtest Vps"
echo -e " [10]  Renew Certificate V2RAY         [20] Informasi System"
echo -e " [11]  Change Port All Account         [21] Info Script"
echo -e " [12]  Autobackup Data VPS             [22] Restart All Service"
echo -e " [13]  Backup Data VPS                 [23] Set Auto Reboot"
echo -e " [14]  Restore Data VPS                 [24] Set Multi Login"
echo -e " [15]  Webmin Menu                     [25] Install Bbr"
echo -e " [16]  Limit Bandwith Speed Server     [26] Add Cloudflare"
echo -e " [17]  Check Usage of VPS Ram          [27] Cloudflare Add-on"
echo -e " [18]  Reboot VPS                      [28] Pointing Bug"
echo -e " [00] RidwanStore                      [29] Status Tunneling"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ Exit From Putty / JuiceSSH / Termux ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e ""

read -p "     Please Input Number  [1-22 or x] :  "  num

echo -e ""

case $num in

1)

tessh

;;

2)

wgg

;;

3)

ltp

;;

4)

ssstp

;;

5)

sssr

;;

6)

wss

;;

7)

vls

;;

8)

trj

;;

9)

add-host

;;

10)

certv2ray

;;

11)

change-port

;;

12)

autobackup

;;

13)

backup

;;

14)

restore

;;

15)

wbmn

;;

16)

limit-speed

;;

17)

ram

;;

18)

reboot

;;

19)

speedtest

;;

20)

info

;;

21)

about

;;

22)

restart

;;

23)

auto-reboot

;;

24)

autokill

;;

25)

bbr

;;

26)

cff

;;

27)

cfd

;;

28)

cfh

;;

29)

running

;;

x)

exit

;;

*)

echo "Please enter an correct number"

;;

esac
