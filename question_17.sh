####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  17                                                                                            #
#  Question       =  Write a script that checks for and reports any failed SSH login attempts on a Linux server.   #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

LOGFILE="/var/log/auth.log"
FAILED_ATTEMPTS=$(grep "sshd.*Failed password" "$LOGFILE" | wc -l)

if [[ -f "$LOGFILE" ]]; 
then
    echo -e "Log file $LOGFILE found."
    echo "Failed SSH login attempts: $FAILED_ATTEMPTS"
        if [ "$FAILED_ATTEMPTS" -gt 0 ]; 
        then
            echo -e "Details of the last 10 failed login attempts:"
            grep "sshd.*Failed password" "$LOGFILE" | tail -n 10
        else
            echo -e "There is no failed logins"
        fi
else
    echo -e "Error: Log file $LOGFILE not found."
    exit 1
fi
