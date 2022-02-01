#!/bin/bash
loc=$(pwd)
sudo add-apt-repository universe -y
sudo apt full-upgrade -y
sudo apt update -y 
sudo apt autoremove -y
sudo apt install python3 python3-pip firefox ssmtp mailutils -y
pip3 install selenium==4.0.0
tar xzvf geckodriver*
mkdir $HOME/geckodriver
mv geckodriver* $HOME/geckodriver/
cd $HOME/geckodriver
echo "export PATH=$PATH:$HOME/geckodriver" >> $HOME/.bashrc
cd $loc
sudo mv gpubot /usr/bin/
mkdir $HOME/PythonProjects
mv bot.py $HOME/PythonProjects

echo "root=postmaster" | sudo tee /etc/ssmtp/ssmtp.conf
echo "mailhub=smtp.gmail.com:587" | sudo tee -a /etc/ssmtp/ssmtp.conf
echo "hostname=default-user-name" | sudo tee -a /etc/ssmtp/ssmtp.conf
echo "AuthUser=AGmailUserName@gmail.com" | sudo tee -a /etc/ssmtp/ssmtp.conf
echo "AuthPass=TheGmailPassword" | sudo tee -a /etc/ssmtp/ssmtp.conf
echo "FromLineOverride=YES" | sudo tee -a /etc/ssmtp/ssmtp.conf
echo "UseSTARTTLS=YES" | sudo tee -a /etc/ssmtp/ssmtp.conf

sudo nano /etc/ssmtp/ssmtp.conf

# TODO:
#   set up SSMTP in a secure way
#   add Geckodriver to PATH

# see the following to set up ssmtp
# https://www.linuxcnf.com/2018/11/how-to-install-and-configure-ssmtp-in.html
# https://raspberry-projects.com/pi/software_utilities/email/ssmtp-to-send-emails

# See this for permanently adding an item to PATH
# https://stackabuse.com/how-to-permanently-set-path-in-linux/
