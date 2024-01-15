####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  11                                                                                            #
#  Question       =  Write a shell script that adds new users to the system based on a list of names in a CSV file.#                                  
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash 

IN_FILE="my.csv" 

while IFS="," read col1 col2 col3
do 
    grep $col1 /etc/passwd 
    if [[ $? = 0 ]]
    then
        echo -e "user already exist."
    else
        echo -e "user does not exist."
        echo -e "Creating user..."
        useradd $col1
        echo -e "$col1 user added succesfully."
        echo -e "==============================="
    fi
done < "$IN_FILE"