#!/bin/bash
yum update -y
#install all apache
yum install httpd -y
#copy content to /var/www/html folder

cd /var/www/html
FOLDER="https://raw.githubusercontent.com/Drezzym6/my-repository/main/101-kittens-carousel-static-website-ec2/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

# start and enable apache service
systemctl start httpd
systemctl enable httpd