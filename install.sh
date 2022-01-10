#!/bin/bash
loc=$(pwd)
sudo apt install python3 python3-pip firefox ssmtp -y
pip3 install selenium==4.0.0
tar xzvf geckodriver*
mkdir ~/geckodriver
mv geckodriver* ~/geckodriver/
cd ~/geckodriver
export PATH=$PATH:$(pwd)
cd $loc
sudo mv gpubot /usr/bin/
mkdir ~/PythonProjects
mv bot.py ~/PythonProjects

# see the following to set up ssmtp and epel-release
# guides are for CENTOS but Ubuntu instructions are similar
# https://www.linuxcnf.com/2018/03/how-to-install-epel-repository-on.html
# https://www.linuxcnf.com/2018/11/how-to-install-and-configure-ssmtp-in.html
