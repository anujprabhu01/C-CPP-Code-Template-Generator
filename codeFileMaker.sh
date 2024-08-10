#!/bin/bash
#codeFileMaker.sh

#Author: Anuj Prabhu
#Date: 6 October 2023
#Description: This shell script makes outlines for c/c++ files using the makeHeader and codeTemplateMaker scripts.

if [ $# -lt 3 ] || [ $# -eq 4 ] || [ $# -gt 5 ]; then #if there an invalid number of arguments, echo error message.
	echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>"

elif [ $# -eq 3 ]; then #if there are 3 command line (cl) arguments passed to the file,
	
	if [ "$1" == "-c" ] || [ "$1" == "-cpp" ]; then #and those parameters are structurally valid, then use case is valid.
		./makeHeader.sh "$2" "$3" | cat #thus, build outline for c/c++ files.
		./codeTemplateMaker.sh $1 | cat #pipe the header string to cat, concatenating it with the next string to come and dumping all contents in the cl.
	
	else
		echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>"
	
	fi

elif [ $# -eq 5 ]; then #if 5 arguments passed to file,
	
	if [ "$1" == "-c" ] || [ "$1" == "-cpp" ] && [ "$4" == "-o" ]; then #and those parameters are valid, then use case is valid.
		./makeHeader.sh "$2" "$3" | cat > $5 #execute makeHeader.sh and pipe its stdout to cat. Then, rather than dumping in cl, redirect that concatenated output to "output_file".
		./codeTemplateMaker.sh $1 | cat >> $5 #execute codeTemplateMaker.sh, pipe its output to cat, and redirect and append that concatenated output to "output_file".

		echo "Created file $5"
	
	else
		echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>"
	
	fi

else #if no condition is met, output error message about correct usage.
	echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>"

fi
