####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  10                                                                                            #
#  Question       =  Write a shell script that fetches data from an AWS EC2 API and processes the JSON response    # 
#                    to print instance IDs and its public and private IP address.                                  #                                     
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

INSTANCE="i-05e877711f96f147d"
PRIVATE="172.31.44.239"
PUBLIC="13.200.252.195"

echo -e "The instance id of your instance is $INSTANCE"
echo
echo -e "The Private ip of your instance is $PRIVATE"
echo
echo -e "The Public ip of your instance is $PUBLIC"