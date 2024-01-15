####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  12                                                                                            #
#  Question       =  Write a script that periodically syncs a local directory with a remote server using 'rsync'   #
#                    and 'cron'.                                                                                   #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

IN_FILE=dir-name

UNAME=root
ADD=192.168.31.59
LOC=/mnt/

while read col1
do
    echo -e "Syncing the $col1 directory to remote server."
    rsync -avzh $col1 $UNAME@$ADD:$LOC
    echo -e "Your Directory is synched by remote server." 
done < "$IN_FILE"