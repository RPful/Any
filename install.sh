#!/bin/bash
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
figlet 'MEGASSH' | lolcat
echo -e "\E[44;1;37m    INSTALAR CHECKUSER ANYVPN     \E[0m" 
echo ""
echo ""
echo -ne "\n\033[1;32mDE UM ENTER PARA \033[1;33mCONTINUAR...\033[1;37m: "; read -r
clear
echo -e "\n\033[1;36mINICIANDO INSTALAÇÃO \033[1;33mAGUARDE..."
apt-get install figlet -y > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1
rm /bin/chany > /dev/null 2>&1
sleep 5
cd /bin || exit
wget https://raw.githubusercontent.com/RPful/checkany/main/chany > /dev/null 2>&1
wget https://raw.githubusercontent.com/RPful/checkany/main/userscheck > /dev/null 2>&1
chmod 777 chany > /dev/null 2>&1
chmod 777 userscheck > /dev/null 2>&1
clear
mkdir /usr/lib/checkany > /dev/null 2>&1
cd /usr/lib/checkany || exit
rm checkany.py > /dev/null 2>&1
wget https://raw.githubusercontent.com/RPful/checkany/main/checkany.py > /dev/null 2>&1
chmod 777 checkany.py > /dev/null 2>&1
clear
figlet 'SCOTT-PRO' | lolcat
echo -e "        \033[1;33m • \033[1;32mINSTALAÇÃO CONCLUÍDA, BOM USO PEQUENO GAFANHOTO.\033[1;33m • \033[0m"
sleep 2
clear
echo ""
echo -e "\033[1;31m \033[1;33mCOMANDO PRINCIPAL: \033[1;32mchany\033[0m"
echo ""
chany
cat /dev/null > ~/.bash_history && history -c
exit
