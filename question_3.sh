####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  03                                                                                            #
#  Question       =  Write a shell script that checks whether a specified service is running and restarts it if    #
#                    it's not running.                                                                             #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter service name to check Status:"  SERVICE
STATUS=`systemctl status $SERVICE | grep Active | awk '{print $2}'`

if [[ $STATUS == active ]]
then 
    echo -e "the service $SERVICE is active"
    systemctl status $SERVICE | egrep -i "active|ssh.service - "

    
else
    echo -e "The service is not installed"
    read -p "do you want to install this service (y/n):" CHOICE
        shopt -s nocasematch
        if [[ $CHOICE == y ]]
        then
        apt install $SERVICE -y > /dev/null 2>&1
            if [[ $? == 0 ]]
            then
            systemctl start $SERVICE 
            echo -e "The $SERVICE service is started."
            systemctl status $SERVICE | egrep -i "active|ssh.service - "
            else
            echo -e "Provide right name of service."
            fi
        else
        echo -e "Thanks for using this shell."
        fi
        shopt -u nocasematch
fi