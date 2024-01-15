####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  15                                                                                            #
#  Question       =  Write a shell script that finds and lists all files in a directory tree that have not been    #
#                    accessed in a specified number of days.                                                       #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter your directory name: " DIR
read -p "Enter how old accessed file you want to list: " OLD

if [[ -d $DIR ]]
then 
    echo -e "Directory $DIR found."
    find $DIR -type f -atime +$OLD
else
    echo -e "Directory $DIR not found."
fi