#!/bin/bash

# Set Date Parameter
DATE=$(date +"%d-%m-%y")

#Display title
echo "###################################"
echo "#    Welcome. Today is $DATE   #"
echo "###################################"

# Display machine name
UNAME=$(uname)
echo "This machine is running $UNAME"

# Display IP Address
IP=$(hostname -I | awk -F ' ' '{print $1}')
echo "My IP address is $IP"

# Display Hosstname
HN=$(hostname)
echo "This machine is called $HN"

# Display DNS info




echo "###################################"

mkdir ~/research
sudo find / -type f -executable | cat >> ~/research/sys_info.txt
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head | cat >> ~/research/sys_info.txt













