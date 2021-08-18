#!/bin/bash

#################################################################################
#										#
# Title:  	testing if's and loops						#
#										#
# created by:	Shane 								#
#										#
# Created on:	26 June 2021							#
#										#
# Revised:									#
#										#
#################################################################################

###################################
# Test for existence of a directory

if [ ! -d ~/research ]
then
	mkdir ~/research
fi
###################################

##################################
# Test for existence of a file
# ~/research/sys_info.txt

if [ -f ~/research/sys_info.txt ]
then
	rm ~/research/sys_info.txt
fi
################################

################################
# Check which user is logged in

if [ $USER != sysadmin ]
then
	echo "You are not sysadmin. Go away."
fi


if [ $(whoami) = sysadmin ]
then
	echo "You are sysadmin."
fi


if [ $UID != 1000 ]
then 
	echo "Your UID is incorrect."
fi

####################################################


####################################################
# More guff IPV6 address

IP_VAR=$(ip addr | grep inet | tail -2 | head -1)

echo $IP_VAR

###################################################


###################################################
# 

FILE_TYPE=$(find /home -type f -perm 777)

echo $FILE_TYPE

###################################################


###################################################
# was this run with sudo

echo "Bonus stuff"
echo $UID "test again"
echo $(whoami)

if [ $(whoami) = root ]
then
	echo " #####DO NOT RUN THIS AS A ROOT USER##### "
fi

echo "Bonus Stuff"

###################################################


