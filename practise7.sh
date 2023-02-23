#!/bin/bash
# script to display number of files in current directory
#file count 
cd
echo "Enter the path"
read path

cd $path
filecount(){

ls -1|wc -l

}
a=filecount
echo "Number of files present in the directory - " 
$a

