####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  02                                                                                            #
#  Question       =  Write a shell script to monitor disk usage and send an email alert if usage exceeds a         #
#                    specified threshold.                                                                          #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

TRESHHOLD=50
PERC=`df -h | grep /dev/sdc | awk '{print $5}' | tr -d % > /dev/null`

if [[ $PERC -ge $TRESHHOLD ]]
then
    echo -e "Check your storage of / disk, it's running out of storage..." | mail -s "WARNING!!!" kamrsh441@gmail.com
else
    echo -e "Your $DISK disk is in great condition"
fi
