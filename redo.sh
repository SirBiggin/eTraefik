#!/bin/bash
cd /etc/
rm -r /etc/etraefik

cd /etc/
git clone https://github.com/SirBiggin/etraefik
cd /etc/etraefik/
sudo mkdir -p /etc/etraefik/certs
sudo touch /etc/etraefik/certs/acme.json
sudo chmod 600 /etc/etraefik/certs/acme.json
cd /etc/etraefik/
ls - l run.sh
sudo chmod 774 run.sh
wget https://github.com/traefik/traefik/releases/download/v2.9.7/traefik_v2.9.7_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.7_linux_amd64.tar.gz
cd /etc/etraefik/
./run.sh