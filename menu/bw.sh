#!/bin/bash


ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Andyyuda/permission/main/ip"
checking_sc() {
useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e ""
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Admin :${NC}"
echo -e "      \033[0;36mTelegram${NC} t.me/Dragon_Emperor999"
echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283821682527"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
exit
fi
}
checking_sc
clear
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
domain=$(cat /etc/xray/domain)
modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
modifyTime1=$(date +%s -d "${modifyTime}")
currentTime=$(date +%s)
stampDiff=$(expr ${currentTime} - ${modifyTime1})
days=$(expr ${stampDiff} / 86400)
remainingDays=$(expr 90 - ${days})
tlsStatus=${remainingDays}
if [[ ${remainingDays} -le 0 ]]; then
tlsStatus="expired"
fi
uptime="$(uptime -p | cut -d " " -f 2-10)"
Repo1="https://raw.githubusercontent.com/Jengkolonline/izinn/main/ip"
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $3}')
UDPCORE="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
clear
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e " ${YELLOW}     _______  _________ ______  __ ${NC} ${putih}PREMIUM${NC}"
echo -e " ${YELLOW} __ / / __/ |/ / ___/ //_/ __ \/ / ${NC} ${putih}SCRIPT${NC}"
echo -e " ${YELLOW}/ // / _//    / (_ / ,< / /_/ / /__${NC} ${BLUE}========${NC}"
echo -e " ${YELLOW}\___/___/_/|_/\___/_/|_|\____/____/${NC}"
echo -e " ${putih}───────${NC} ${Green} / __ \/ |/ / /  /  _/ |/ / __//|  ${NC}"
echo -e " ${putih}───────${NC} ${Green}/ /_/ /    / /___/ //    / _/> _< ${NC}"
echo -e " ${putih}───────${NC} ${Green}\____/_/|_/____/___/_/|_/___/|/   ${NC}"
echo -e " ${Green}MULTI PROT PROT${FONT} (C)${GRAY} AUTO INSTALASI${NC}"
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e "\E[0;100;33m        • INFORMASI •         \E[0m"
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e "                                                                                         "
echo -e "\e[33m Operating System     \e[0m:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "\e[33m Total Amount Of RAM  \e[0m:  $tram MB"
echo -e "\e[33m System Uptime        \e[0m:  $uptime "
echo -e "\e[33m Isp Name             \e[0m:  $ISP"
echo -e "\e[33m Domain               \e[0m:  $domain"
echo -e "\e[33m Ip Vps               \e[0m:  $IPVPS"
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e "\E[0;100;33m       • MENU UTAMA •         \E[0m"
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e " [\e[36m•1\e[0m] SSH & OpenVPN Menu  [\e[36m•4\e[0m] Trojan Go Menu"
echo -e " [\e[36m•2\e[0m] Vmess Menu          [\e[36m•5\e[0m] Trojan GFW Menu"
echo -e " [\e[36m•3\e[0m] Vless Menu          [\e[36m•6\e[0m] Shadowsoks Menu"
echo -e ""
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e "\E[0;100;33m       • MENU SISTEM •         \E[0m"
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e " [\e[36m•7\e[0m] Install UDP         [\e[36m•9\e[0m] Status Running"
echo -e " [\e[36m•8\e[0m] SYSTEM Menu         [\e[36m•10\e[0m] Clear RAM Cache"
echo -e ""
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e "\E[0;100;33m       • MASA AKTIF •         \E[0m"
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "   ${putih}Client Name${NC}   :  ${putih}$Name${NC}"
echo -e "   ${putih}Exp Script${NC}    :  ${putih}$Exp${NC}"
echo -e "   ${putih}Version${NC}       :  ${putih}2.1.2${NC}"
echo -e ""
echo -e "${putih]└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e   " Press x or [ Ctrl+C ] • To-Exit-Script"
echo -e   ""
echo -e   ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trgo ;;
5) clear ; menu-trojan ;;
6) clear ; m-ssws ;;
7) clear ; wget --load-cookies /tmp/cookies.txt ${UDPCORE} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
8) clear ; menu-set ;;
9) clear ; running ;;
10) clear ; clearcache ;;
x) exit ;;
esac
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m      • BANDWITH MONITOR •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Lihat Total Bandwith Tersisa"
echo -e " [\e[36m•2\e[0m] Tabel Penggunaan Setiap 5 Menit"
echo -e " [\e[36m•3\e[0m] Tabel Penggunaan Setiap Jam"
echo -e " [\e[36m•4\e[0m] Tabel Penggunaan Setiap Hari"
echo -e " [\e[36m•5\e[0m] Tabel Penggunaan Setiap Bulan"
echo -e " [\e[36m•6\e[0m] Tabel Penggunaan Setiap Tahun"
echo -e " [\e[36m•7\e[0m] Tabel Penggunaan Tertinggi"
echo -e " [\e[36m•8\e[0m] Statistik Penggunaan Setiap Jam"
echo -e " [\e[36m•9\e[0m] Lihat Penggunaan Aktif Saat Ini"
echo -e " [\e[36m10\e[0m] Lihat Trafik Penggunaan Aktif Saat Ini [5s]"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e " [\e[31m•x\e[0m] Keluar"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m • TOTAL BANDWITH SERVER TERSISA • \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
2)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m • TOTAL BANDWITH SETIAP 5 MENIT • \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -5
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
3)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m   • TOTAL BANDWITH SETIAP JAM •   \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -h
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
4)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m  • TOTAL BANDWITH SETIAP HARI •   \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -d
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
5)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m  • TOTAL BANDWITH SETIAP BULAN •  \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -m
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
6)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m  • TOTAL BANDWITH SETIAP TAHUN •  \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -y
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
7)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m    • TOTAL BANDWITH TERTINGGI •   \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -t
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
8)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m • STATISTIK TERPAKAI SETIAP JAM • \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -hg
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
9)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m     • LIVE BANDWITH SAAT INI •    \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   " Press [ Ctrl+C ] • To-Exit"
echo -e ""
vnstat -l
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
10)
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m• LIVE TRAFIK PENGGUNAAN BANDWITH •\e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
vnstat -tr
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
0)
sleep 1
menu
;;
x)
exit
;;
*)
echo -e ""
echo -e "Anda salah tekan"
sleep 1
bw
;;
esac
