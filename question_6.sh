####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  06                                                                                            #
#  Question       =  Write a script that compresses and archives log files older than a certain number of days.    #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter Directory name in which old log files are present:" DIR

if [[ -d $DIR ]]
then
    find "$DIR" -mtime +25 | xargs  tar -czvPf  /tmp/log.tar.gz
    echo -e "there was some old log files present in $DIR directory now it's get cmpressed in "/tmp/log.tar.gz" this location." 
else
    echo -e "please check your input..."
fi