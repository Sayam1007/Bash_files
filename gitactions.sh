#!/bin/bash

#git functions

echo "checking if git is installed in your system or not"
if ! [ -x "$(command -v git)" ];
then
echo "Git is not installed in your system installing git"
echo "--------------------------------------------------"
sudo apt install git  -y
echo "Configuring git globally"
echo "Enter github email id"
read emailid
echo "Enter github username"
read username

git config --global user.email "$emailid"
git config --global user.name "$username"

else
echo "git is installed in your system"
fi
echo "do you  want to select any operation"

echo "----------Git-Operations----------------"
echo "1.-----------Git-clone------------------"
echo "2.-----------Git-pull-------------------"
echo "3.-----------Git-push-------------------"
read option 

cd 
echo "Enter the directory where you want to perform git functions"
read path
cd $path

echo "Enter the github repository url "
read url

case $option in 
1)
sudo git clone $url
;; 

2)
sudo git init
sudo git pull $url
;;

3)
echo "Enter commit message"
read message
sudo git init
sudo git add .
sudo git commit  -m "$message"


esac



