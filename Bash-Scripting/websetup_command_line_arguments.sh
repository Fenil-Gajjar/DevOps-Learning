#!/bin/bash

# in Command line arguments, 0th argument is always gives the name of the file
# 1 to 9 are for the user specific arguments in order 
# User needs to pass the arguments at the time of running the script command :
# For EX : ./websetup_command_line_arguments.sh https://www.tooplate.com/zip-templates/2098_health.zip 2098_health

#variable declaration
PACKAGE="wget httpd unzip"
SVC="httpd"
#URL="https://www.tooplate.com/zip-templates/2098_health.zip"
#ART_NAME="2098_health"
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
wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/

echo "Restart httpd service"
systemctl restart $SVC

echo "Removing temporary files"
rm -rf $TEMPDIR

sudo systemctl status $SVC
ls /var/www/html