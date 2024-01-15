####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  04                                                                                            #
#  Question       =  Write a script that backs up a specified directory to a remote server using 'rsync' and SSH.  #                                                                       #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter Directory name to take backup:" DIR

if [[ -d $DIR ]]
then
    echo -e "$DIR directory found"
    rsync $DIR root@192.168.227.59:/root/
    echo -e "Backup is saved...."
else
    echo -e "Check your input"
fi

