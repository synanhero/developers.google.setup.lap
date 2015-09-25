#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential php5 php-pear apache2 -y
echo 'deb http://packages.dotdeb.org wheezy-php56 all' | sudo tee --append /etc/apt/sources.list > /dev/null
sudo wget http://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
sudo apt-get update
sudo apt-get install php5-cli -y
sudo touch /var/www/index.php
sudo chmod 777 /var/www/index.php
sudo echo "<?php phpinfo();" >> /var/www/index.php
sudo apt-get install curl libcurl3 libcurl3-dev php5-curl
cd /usr/local/src
sudo wget http://curl.haxx.se/download/curl-7.44.0.tar.gz
sudo tar -xvzf curl-7.44.0.tar.gz
sudo rm curl-7.44.0.tar.gz
cd curl-7.44.0
sudo apt-get install build-essential -y
sudo ./configure --with-ssl
sudo make
sudo make install
sudo service apache2 restart