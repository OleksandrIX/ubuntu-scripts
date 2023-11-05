#!/bin/bash
sudo apt update
sudo apt install -y openjdk-11-jdk

java_path=$(update-alternatives --query java | grep "Best: " | awk '{print $2}')

echo "export JAVA_HOME=$java_path" >> ~/.bashrc
source ~/.bashrc

java -version
echo "Java 11 is installed."
echo "JAVA_HOME is set to $java_path."