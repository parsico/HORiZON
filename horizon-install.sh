#!/bin/bash
BLUE="\033[0;34m"
RESET="\033[0m"
echo -e "${BLUE}"
echo "█░░█ █▀▀█ █▀▀█ ░▀░ ▀▀█ █▀▀█ █▀▀▄"
echo "█▀▀█ █░░█ █▄▄▀ ▀█▀ ▄▀░ █░░█ █░░█"
echo "▀░░▀ ▀▀▀▀ ▀░▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀░░▀"
echo -e "${RESET}"
read -p "Enter Yourdomain & Subdomain:" domain
apt update && apt upgrade -y && apt-get install cron && apt install curl socat -y && curl https://get.acme.sh | sh && ~/.acme.sh/acme.sh --set-default-ca --server letsencrypt && ~/.acme.sh/acme.sh --register-account -m ssl@parsico.org && ~/.acme.sh/acme.sh --issue -d $domain --standalone && ~/.acme.sh/acme.sh --installcert -d $domain --key-file /root/private.key --fullchain-file /root/cert.crt && bash <(curl -Ls https://raw.githubusercontent.com/parsico/3x-ui/master/install.sh)
