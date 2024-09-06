#!/bin/bash

echo " Installing Dependencies "
sudo yum install wget httpd unzip -y > /dev/null

echo " Start & Enable httpd "
udo systemctl start httpd
sudo systemctl enable httpd

echo " Creating temp directories "
mkdir -p /tmp/webfiles
cd /tmp/webfiles

echo " Downloading zip file and unzip it"
wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/

echo "Restart httpd service"
systemctl restart httpd

echo "Removing temporary files"
rm -rf /tmp/webfiles

sudo systemctl status httpd
ls /var/www/html