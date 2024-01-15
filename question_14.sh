####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  14                                                                                            #
#  Question       =  Write a script that compares two directories and reports any differences in their content.    #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "enter first dirctoey name: " FIRST
read -p "enter second dirctoey name: " SECOND

sdiff "$FIRST" "$SECOND" > difference 

if [[ -d $FIRST && -d $SECOND ]]
then
    echo -e "Finding directories..." 
        if [[ $? == 0 ]]
        then 
            echo "There is no difference between $FIRST & $SECOND directory."
        else
            echo "There is some difference between $FIRST & $SECOND directory."
            cat difference
        fi
else
    echo -e "Provide correct directory name!"
fi