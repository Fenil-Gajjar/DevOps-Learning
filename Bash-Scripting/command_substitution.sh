#!/bin/bash

# Command Substitution:
# it takes output of a command and stores it into the variable.
# we can achieve command substitution by using either backticks(``) or parenthesis()

echo "Welcome $USER on $HOSTNAME."
echo

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk 'print($9)'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "###############################"
echo "Available free RAM is $FREERAM MB"
echo "###############################"
echo "Current Load Average $LOAD"
echo "###############################"
echo "Free ROOT partition size is $ROOTFREE"