####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  16                                                                                            #
#  Question       =  Write a shell script that automatically organizes files in a directory based on their file    #
#                    types (e.g., images, audio files).                                                            #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter Directory name: " DIR
read -p "Enter file type: " F_TYPE 
if [[ -d $DIR ]]
then
    echo -e "Directory found"
    TYPE_DIR="$F_TYPE-dir-$(date +%Y-%m-%d)"
    mkdir "$TYPE_DIR"
    find "$DIR" -maxdepth 1 -type f -iname "*.$F_TYPE" -exec mv {} "$TYPE_DIR" \;
    echo "Files moved to $TYPE_DIR"    
else    
    echo -e "Directory not found"
fi

