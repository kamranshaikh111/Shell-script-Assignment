####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  20                                                                                            #
#  Question       =  Write a shell script that retrieves the current weather for a specified location using a      #
#                    weather API.                                                                                  #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

TODAY=`curl -s wttr.in/"$LOCATION"?format=%t`

read -p "Enter location to check weather: " LOCATION
echo -e "Todays weather for $LOCATION is $TODAY."


