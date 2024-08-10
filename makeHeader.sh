#!/bin/bash
#makeHeader.sh

#Author: Anuj Prabhu
#Date: 6 October 2023
#Description: This shell script makes a header for a c/c++ file.

cat <<EOF
/*
Author: $1
Date: $(date "+%m/%d/%Y")
Description: $2
*/
EOF
#<<EOF creates a heredoc. This heredoc allows us to pass the lines of code within its scope to the cat command. The cat command takes this block of code, concatenates it as text, and dumps it in the command line.
#To get the date, the date command is used and formatted as a string that matches the mm/dd/yyyy format. Then, the value of this command is extracted using the $ command.
