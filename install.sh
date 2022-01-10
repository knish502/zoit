#!/bin/bash
loc=$(pwd)
sudo apt install python3 python3-pip firefox ssmtp mailutils -y
pip3 install selenium==4.0.0
tar xzvf geckodriver*
mkdir $HOME/geckodriver
mv geckodriver* $HOME/geckodriver/
cd $HOME/geckodriver
echo "PATH=$PATH:$HOME/geckodriver" >> $HOME/.bash_profile
echo "export PATH" >> $HOME/.bash_profile
cd $loc
sudo mv gpubot /usr/bin/
mkdir $HOME/PythonProjects
mv bot.py $HOME/PythonProjects

# TODO:
#   set up SSMTP in a secure way
#   add Geckodriver to PATH

# see the following to set up ssmtp
# https://www.linuxcnf.com/2018/11/how-to-install-and-configure-ssmtp-in.html
# https://raspberry-projects.com/pi/software_utilities/email/ssmtp-to-send-emails
