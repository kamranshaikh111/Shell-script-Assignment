####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  09                                                                                            #
#  Question       =  Write a shell script that scans a directory for files matching a certain pattern and deletes  # 
#                    them.                                                                                         #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "enter the file type you want to delete:" FTYPE
read -p "enter the Path of your file:" DIR

if [[ -d $DIR ]]
then
    echo -e "File type found" 
    find $DIR -name "*.$FTYPE" -exec rm -rf {} \;
    echo -e "$FTYPE files are deleted"
else
    echo -e "check your input please..."
fi