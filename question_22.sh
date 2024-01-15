####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  22                                                                                            #
#  Question       =  Write a shell script that sends a daily summary of system logs via email.                     #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

EMAIL_ID="kamrsh441@gmail.com"
SUMMARY=`grep -i "$(date '+%b %e')" /var/log/syslog | awk '{print $5, $6, $7, $8}'` > /dev/null 2>&1

function LOG_MAIL () {

echo -e "Hello All 

            This is system generated email, do not reply to this email.
            The daily summary of logs of your system is generated,
            find the logs below.

            Server Name : - `hostname` 
            System logs : - "$SUMMARY"

Thank & Regards
Team CloudEthix" 
}

echo -e "Email sending... \n......"
LOG_MAIL | mail -s "System Log Summary" $EMAIL_ID
echo -e "System generated logs sent successfully"
