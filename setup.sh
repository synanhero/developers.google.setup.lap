#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install php5 php-pear -y
sudo echo "deb http://packages.dotdeb.org wheezy-php56 all" >> /etc/apt/sources.list.d/dotdeb.list
sudo wget http://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
sudo apt-get update
sudo apt-get install php5-cli -y
sudo touch /var/www/index.php
sudo chmod 777 /var/www/index.php
sudo echo "<?php phpinfo();" >> /var/www/index.php
sudo service apache2 restart
