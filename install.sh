#!/bin/bash
loc=$(pwd)
sudo apt install python3 python3-pip firefox -y
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
