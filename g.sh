#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

echo "Running as root..."

sleep 3

clear

echo "Updating Please Wait..."

service passwall stop

cd /root/

rm d.sh

wget https://raw.githubusercontent.com/BekassX/OpenWRT-Install-Xray-V2ray-On-Passwall/main/d.sh


chmod 777 d.sh

cd /etc/init.d/

rm a

wget https://raw.githubusercontent.com/BekassX/OpenWRT-Install-Xray-V2ray-On-Passwall/main/a.sh

chmod +x /etc/init.d/a

/etc/init.d/a enable

cd /root/


/etc/init.d/a start

echo -e "${GREEN} Update Complated ! ${ENDCOLOR}"
