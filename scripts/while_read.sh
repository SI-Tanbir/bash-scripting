#!/bin/bash         
# Shebang: specifies the script should be run using bash

# Start a while loop that reads input line by line
while read line 
do 
    # Print the current line to the terminal
    echo $line
done < /etc/passwd   # Redirect the content of /etc/passwd to the while loop
