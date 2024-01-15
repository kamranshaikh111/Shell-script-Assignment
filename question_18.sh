####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  18                                                                                            #
#  Question       =  Write a shell script that monitors a specified file for changes and executes a specific       #
#                    action when the file is modified.                                                             #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

MONITOR="hello.txt"

if [[ -f "$MONITOR" ]]; 
then
	echo -e "The specified file found."
	echo "Monitoring file: $MONITOR"
		while true; do
			if [[ "$(inotifywait -e open "$MONITOR")" ]]; 
			then
				echo "File has been modified. Performing specific action."
			else
				echo "Error while monitoring the file. Exiting..."
				exit 1
			fi
		done
else
    echo -e "Error: The specified file does not exist."
    exit 1
fi

