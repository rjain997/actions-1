#!/bin/bash
echo "-------------------------------------------------------------"
echo "lets install cowasay"
sudo apt-get install cowsay -y
echo "-------------------------------------------------------------"
echo " Lets draw a dragon"
cowsay -f dragon "Run for cover,I am a DRAGON....RAWR" 
echo "-------------------------------------------------------------"
echo " Lets see if the file is created"
grep -i "dragon" dragon.txt
echo "-------------------------------------------------------------"
echo "Lets see the dragon for real"
cat dragon.txt
echo "-------------------------------------------------------------"
echo "Lets see the file in this directory"
ls -ltrh
echo "Sham gulabi2"
