#!/bin/bash
yum update -y
#install all apache
yum install httpd -y
#copy contaent to var/www/html to folder
cd /var/www/html
FOLDER="https://raw.githubusercontent.com/awsdevopsteam/101-cfn-static-website-ec2/master/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/cat3.png

# start and enable Apache service
systemctl start httpd
systemctl enable httpd