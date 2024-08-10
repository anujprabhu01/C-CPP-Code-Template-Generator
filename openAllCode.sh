#!/bin/bash
#openAllCode.sh

#Author: Anuj Prabhu
#Date: 7 October 2023
#Description: This script opens all c/c++ files in the current directory and cats their contents to the command line.

find . -type f \( -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" \) -exec cat {} \; #find in the current directory (.) all files (-type f) that have extensions .h or (-o) .hpp or .c, .cpp, .cc (* wildcard to specify that include any and all files that have those extensions). If any one of these conditions are true, return true without evaluating the others (since using or operator). Then, apply cat to each file found by find (-exec). -exec applies a command to each file matching search criteria in find.
