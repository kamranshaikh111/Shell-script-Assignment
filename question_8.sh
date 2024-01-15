####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  08                                                                                            #
#  Question       =  Write a script that monitors a list of websites and sends an email notification if any of     #
#                    them are down.                                                                                #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

EMAIL=kamrsh441@gmail.com
read -p "enter website name to check:" WEB
ping -c 1 www.$WEB.com > /dev/null

if [[ $? == 0 ]]
then
    echo -e " $WEB website is UP--------------------------------------------------------"
else
    echo -e "Please enter valid Website name."
    echo -e "$WEB website is down!!!" | mail -s "ALERT" $EMAIL
fi

