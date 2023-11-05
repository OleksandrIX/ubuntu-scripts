#!/bin/bash

sudo apt update
sudo apt install -y ufw
sudo ufw enable

sudo ufw allow OpenSSH

sudo ufw allow 8080/tcp

sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx Full'

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw status verbose

echo "Nginx, Jenkins, and SSH are allowed with `ufw`."