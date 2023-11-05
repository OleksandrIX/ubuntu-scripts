#!/bin/bash

sudo apt update
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update
sudo apt install -y jenkins

sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "Initial password for Jenkins:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "URL to access Jenkins: http://localhost:8080"
echo "Jenkins is installed and ready to use."
