####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  01                                                                                            #
#  Question       =  Write a shell script that lists all files in a specified directory and saves the output to a  # 
#                    text file.                                                                                    #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

FILE=/tmp/list.txt
read -p "enter your Directory name:" DIR
if [[ -d $DIR ]]
then
    echo -e "Directory $DIR found"
    ls -a $DIR > $FILE 
    echo -e "output stored in file $FILE"
else
    echo -e "check your input"
fi

