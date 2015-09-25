#!/bin/bash
echo 'deb http://packages.dotdeb.org wheezy-php56 all' | sudo tee --append /etc/apt/sources.list > /dev/null
sudo wget http://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 php5-cli -y
sudo touch /var/www/index.php
sudo chmod 777 /var/www/index.php
sudo echo "<?php phpinfo();" >> /var/www/index.php
sudo service apache2 restart
