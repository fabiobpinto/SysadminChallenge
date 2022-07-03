#!/bin/bash
#9.Using bash write a script to find and remove duplicated fake IP addresses lines of "control_file.txt" file and save the output at /tmp/output_1.txt
#Premisses:
#    The script must receive an argument to process, which is the file name (control_file.txt);
#    Find duplicated fake IP addresses and keep just the first one. All other duplicated IP addresses must be removed;
#E.g:
#Using the lines below as example, the second one must be deleted:
#540.300.759.124   lnx02csv lnx02csv.02csv.sps     pid=1  ia1=y domain=02csv        myid=2  wsm=PR wid=1 wst=NA,HI,CP,SC,DS # ADM 
#540.300.759.124   lnx02csv lnx02csv.02csv.sps     pid=1  ia1=y domain=02csv        myid=3  wsm=PR wid=1 wst=NA,HI,CP,SC,DS # ADM 
#
#The final expected result is:
#540.300.759.124   lnx02csv lnx02csv.02csv.sps     pid=1  ia1=y domain=02csv        myid=2  wsm=PR wid=1 wst=NA,HI,CP,SC,DS # ADM
# 
#    All comment lines must be kept on the final output file.

#------------------------------------------------------------------------------------------------------------------------------#

#The script must receive an argument to process
FILE_IN="$1"
#Write the result in the file 
FILE_OUT="/tmp/output_1.txt"


#If don't receive anything as argument, the variable receive the default value
if [ -z "$FILE_IN" ]
then
  FILE_IN="control_file.txt"
fi

#Find duplicated fake IP addresses and keep just the first one and save the output at /tmp/output_1.txt
uniq -w 1 $FILE_IN $FILE_OUT



