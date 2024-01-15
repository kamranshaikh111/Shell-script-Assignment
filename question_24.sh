####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  24                                                                                            #
#  Question       =  Write a shell script that renames a large number of files based on a specified pattern or     #
#                    naming convention.                                                                            #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

PREFIX="new_"

if ls -1 * 1>/dev/null 2>&1; 
then
    echo "Renaming files..."
        for FILE in *; 
		do
			if [ -f "$FILE" ]; 
            then
				EXTENSION="${FILE##*.}"
				NEW_NAME="${PREFIX}${FILE}"
				mv "$FILE" "$NEW_NAME"
				echo "Renamed: $FILE to $NEW_NAME"
			fi
		done
    echo "Renaming completed."
else
    echo "No files found in the current directory."
fi


