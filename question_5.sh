####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  05                                                                                            #
#  Question       =  Write a shell script that checks for software updates and installs them automatically.        #                                                                       #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

PACK=`apt list --upgradable`

read -p "Do you want to update the softwares:(y/n)" CHOICE
shopt -s nocasematch
if [[ $CHOICE == y ]]
then
    apt-get update
    echo -e "Your softwares are updated successfully"
else
    echo -e "thanks for using this shell"
fi 
shopt -x nocasematch

