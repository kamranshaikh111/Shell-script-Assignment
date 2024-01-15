####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  21                                                                                            #
#  Question       =  Write a script that calculates the total disk space used by a user and outputs the result.    #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

SPACE=`du -sh /home/$U_NAME | awk '{print $1}' `

read -p "Enter username to check used disk space: " U_NAME  
echo -e "The space used by $U_NAME user is $SPACE."  
