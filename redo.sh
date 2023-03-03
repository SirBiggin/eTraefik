#!/bin/bash
cd /etc/
rm -r /etc/etraefik

cd /etc/
git clone https://github.com/SirBiggin/etraefik
cd /etc/etraefik/
sudo mkdir -p /etc/etraefik/certs
sudo mkdir -p /var/log/traefik
sudo touch /etc/etraefik/certs/prod-acme.json
sudo touch /var/log/traefik/traefik.log
sudo touch /var/log/traefik/access.log
sudo chmod 600 /etc/etraefik/certs/prod-acme.json
sudo touch /etc/etraefik/certs/non-prod-acme.json
sudo chmod 600 /etc/etraefik/certs/non-prod-acme.json
cd /etc/etraefik/
ls - l ./run.sh
sudo chmod 774 ./run.sh
ls - l ./redo.sh
sudo chmod 774 ./redo.sh
wget https://github.com/traefik/traefik/releases/download/v2.9.7/traefik_v2.9.7_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.7_linux_amd64.tar.gz
cd /etc/etraefik/
./run.sh
