#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
	apache2-utils \
	net-tools \
	git

cd /etc/
git clone https://github.com/SirBiggin/etraefik
cd /etc/etraefik/
ls -l /etc/etraefik/run.sh
ls -l /etc/etraefik/redo.sh
chmod 774 /etc/etraefik/run.sh
chmod +x /etc/etraefik/run.sh
chmod 774 /etc/etraefik/redo.sh
chmod +x /etc/etraefik/redo.sh

cd /etc/etraefik/
sudo mkdir -p /etc/etraefik/certs
sudo touch /etc/etraefik/certs/prod-acme.json
sudo touch /etc/etraefik/certs/non-prod-acme.json
sudo chmod 600 /etc/etraefik/certs/prod-acme.json
sudo chmod 600 /etc/etraefik/certs/non-prod-acme.json


sudo mkdir -p /var/log/traefik
sudo touch /var/log/traefik/traefik.log
sudo touch /var/log/traefik/access.log


cd /etc/etraefik/
#https://github.com/traefik/traefik/releases
wget https://github.com/traefik/traefik/releases/download/v2.9.8/traefik_v2.9.8_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.7_linux_amd64.tar.gz

reboot