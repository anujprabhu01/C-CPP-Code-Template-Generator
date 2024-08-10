#!/bin/bash
#codeTemplateMaker.sh

#Author: Anuj Prabhu
#Date: 6 October 2023
#Description: This shell script makes a code template for a c/c++ file.

if [ $# == 1 ]; then #checks if number of arguments passed are the same as number of arguments required.
	
	if [ "$1" == "-c" ]; then #if the file is a c file, then the relevant template is output to the user. This is done by taking the lines in the heredoc's scope, which is the template, and outputting those lines to the cat command. The cat command then concates those lines as a string and dumps it in the command line.
		cat <<EOF
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    //TODO: Code goes here
    return 0;
}
EOF

	elif [ "$1" == "-cpp" ]; then #if the file is c++ file, then the relevant template is output to the user in a similar fashion as above.
		cat <<EOF
#include <iostream>
#include <stdlib.h>
using namespace std;

int main(int argc, char** argv)
{
    //TODO: Main code
    return 0;
}
EOF

	else #if any other arguments are passed to the file, then the correct usage message is echoed to the user.
		echo "usage: ./codeTemplateMaker.sh <-c|-cpp>"

	fi

else #if number of arguments passed to script are more/less than required, error.
	echo "usage: ./codeTemplateMaker.sh <-c|-cpp>"

fi

