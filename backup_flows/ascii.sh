#!/bin/bash
echo "-------------------------------------------------------------"
whoami
su rj
sleep 10
echo "lets install cowasay"
sudo apt-get update > /dev/null 2>&1
sudo apt-get install -y wget > /dev/null 2>&1
sudo wget http://archive.ubuntu.com/ubuntu/pool/universe/c/cowsay/cowsay_3.03+dfsg2-8_all.deb > /dev/null 2>&1
sudo apt-get install -y libtext-charwidth-perl perl > /dev/null 2>&1
sudo dpkg -i cowsay_3.03+dfsg2-8_all.deb > /dev/null 2>&1
sleep 10
echo "-------------------------------------------------------------"
echo " Lets draw a dragon"
/usr/games/cowsay -f dragon "Run for cover, I am a DRAGON....RAWR" > dragon.txt
echo "-------------------------------------------------------------"
echo " Lets show them if the file is created"
grep -i "dragon" dragon.txt
echo "-------------------------------------------------------------"
echo "Lets see the dragon for real"
cat dragon.txt
echo "-------------------------------------------------------------"
echo "Lets see the file in this directory"
ls -ltrh
echo "Sham gulabi2"
