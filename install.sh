#!/bin/bash
loc=$(pwd)
sudo apt install python3 python3-pip firefox ssmtp epel-release -y
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

# TODO:
#   set up SSMTP in a secure way
#   add Geckodriver to PATH

# see the following to set up ssmtp
# guides are for CENTOS but Ubuntu instructions are similar
# https://www.linuxcnf.com/2018/11/how-to-install-and-configure-ssmtp-in.html
