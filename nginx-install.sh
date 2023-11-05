#!/bin/bash

sudo apt update
sudo apt install -y nginx

sudo systemctl enable nginx

sudo systemctl start nginx
sudo systemctl status nginx

echo "Nginx is installed and ready to use."