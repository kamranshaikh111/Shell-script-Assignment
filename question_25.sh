####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  25                                                                                            #
#  Question       =  Write a script that generates and emails a report of newly created user accounts on a Linux   #
#                    system within the last 24 hours.                                                              #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

EMAIL_ID=kamrsh441@gmail.com
NEW_USERS=$(grep 'useradd' /var/log/auth.log* 2>/dev/null | grep "$(date -d 'yesterday' '+%b %e')" | awk '{print $1, $2, $3, $11}')

function USER_MAIL() {
    echo -e "Hello All 

            This is a system-generated email, do not reply to this email.
            There are new users created on the system; please check the usernames.

            Server Name : - $(hostname)
            System logs : - $NEW_USERS

Thank & Regards
Team CloudEthix"
}

if [[ -n "$NEW_USERS" ]]; 
then
    echo -e "New user accounts found in the last 24 hours."
    echo -e "Sending system email..."
    USER_MAIL | mail -s "New user added in system" "$EMAIL_ID"
    echo -e "Report emailed successfully."
else
    echo -e "No new user accounts found in the last 24 hours."
fi
