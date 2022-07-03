#!/bin/bash
# 8.Using bash write a script to get OS version from multiple Linux servers
# Premisses:
#    The script must receive an argument to process, which is the file name (myservers_list.txt);
#    You will use 'ssh' command to connect into different servers using 'myuser' as the username ;
# The result should be writted in the file 'servers_version.txt' using the format bellow:
# date (hh:mm:ss mm/dd/yy)    <server name>      <server ip>    <server version> 
# E.g:
# 18:53:44 12/10/21    webserver001   192.168.80.5   Linux (none) 2.6.34.14 ##44 Tue Oct 15 20:50:15 CEST 2013 i686 GNU/Linux

##################################################
# Solution
##################################################

DATE=$(date +"%T %D") #18:53:44 12/10/21  (hh:mm:ss mm/dd/yy)    "$(date +%Y-%m)"
SERVER_NAME=$(hostname)
SERVER_IP=$(ip addr | grep inet | egrep -v 'inet6|inet 127.' | awk -F " " '{print $2}' | awk -F "/" '{print $1}')
SERVER_VERSION=$(uname -a)
echo $DATE
echo "$DATE $SERVER_NAME $SERVER_IP $SERVER_VERSION" > servers_version.txt