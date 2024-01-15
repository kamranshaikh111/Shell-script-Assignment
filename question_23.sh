####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  23                                                                                            #
#  Question       =  Write a script that performs a search and replace operation on multiple files in a directory. #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter your directory name: " DIR

if [[ -d $DIR ]]
then
    echo -e "Directory $DIR found."
    read -p "Enter word you have to change: " FIRST
    read -p "Enter word by which you have to change the word : " SECOND
    grep -ril "$FIRST" "$DIR" | xargs sed "s/$FIRST/$SECOND/g"    
else
    echo -e "Directory $DIR not found."
fi