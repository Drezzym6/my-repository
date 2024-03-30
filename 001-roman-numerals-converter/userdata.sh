#!/bin/bash
#update the os
yum update -y
# install python and flask
yum install python3 -y
yum install pip -y 
pip3 install flask

# install the application files
cd /home/ec2-user
mkdir templates

FOLDER=" https://raw.githubusercontent.com/Drezzym6/my-repository/main/001-roman-numerals-converter"
wget ${FOLDER}/app.py
wget -p templates ${FOLDER}/templates/index.html
wget -p templates ${FOLDER}/templates/result.html

#run application
python3 app.py