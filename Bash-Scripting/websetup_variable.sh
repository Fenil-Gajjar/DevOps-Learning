#!/bin/bash

#variable declaration
PACKAGE="wget httpd unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"


echo " Installing Dependencies "
sudo yum install $PACKAGE -y > /dev/null

echo " Start & Enable httpd "
sudo systemctl start $SVC
sudo systemctl enable $SVC

echo " Creating temp directories "
mkdir -p $TEMPDIR
cd $TEMPDIR

echo " Downloading zip file and unzip it"
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/

echo "Restart httpd service"
systemctl restart $SVC

echo "Removing temporary files"
rm -rf $TEMPDIR

sudo systemctl status $SVC
ls /var/www/html