#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql php5-imagick
git clone https://github.com/Mahak-Patil/Application-Setup-Final-Project.git
git clone https://github.com/Mahak-Patil/Environment-Setup-Final-Project.git
git clone https://github.com/Mahak-Patil/Launch-Setup-Final-Project.git

sudo mv ./Environment-Setup-Final-Project/images /var/www/html/images
sudo mv ./Application-Setup-Final-Project/index.html /var/www/html
sudo mv ./Application-Setup-Final-Project/*.php /var/www/html
sudo mv ./Launch-Setup-Final-Project/*.css /var/www/html
sudo mv ./Launch-Setup-Final-Project/*.js /var/www/html

sudo mv ./ITMO544-Fall-Application-FinalProject/index.html /var/www/html
sudo mv ./ITMO544-Fall-Application-FinalProject/*.css /var/www/html
sudo mv ./ITMO544-Fall-Application-FinalProject/*.js /var/www/html
sudo mv ./ITMO544-Fall-Application-FinalProject/*.png /var/www/html
sudo mv ./ITMO544-Fall-Application-FinalProject/*.php /var/www/html

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Hello!" > /tmp/hello.txt







