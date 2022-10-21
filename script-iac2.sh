#!/bin/bash

echo "Updating system..."
apt-get update
apt-get upgrade -y

echo "Updating done... 100%"
echo "Installing dependencies..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Dependecies installed... 100%"
echo "Download DIO project..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Download complete... 100%"
echo "Unzip and copy DIO project..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Unziped and copied to /var/www/html/ folder... 100%"
echo "FINISHED"
