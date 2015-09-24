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
sudo apt-get install curl libcurl3 libcurl3-dev php5-curl -y
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
