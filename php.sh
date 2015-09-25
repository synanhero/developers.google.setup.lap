#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install build-essential apache2 php5 php5-cli -y
touch /var/www/index.php
chmod 777 /var/www/index.php
echo "<?php phpinfo();" >> /var/www/index.php
service apache2 restart
echo 'deb http://packages.dotdeb.org wheezy-php56 all' | tee --append /etc/apt/sources.list > /dev/null
wget http://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
apt-get update -y
apt-get upgrade -y
apt-get install php5-cli -y
service apache2 restart
