#!/bin/bash
sudo yum -y update
sudo yum -y install php httpd ruby
sudo service httpd start
sudo chkconfig httpd on

sudo echo "Hallo World" >> /var/www/html/index.html

# auto install codedeploy agent be careful to setting aws region
wget https://aws-codedeploy-ap-northeast-1.s3.ap-northeast-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto