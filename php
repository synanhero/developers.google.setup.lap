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
cd /usr/local/src
wget http://curl.haxx.se/download/curl-7.44.0.tar.gz
tar -xvzf curl-7.44.0.tar.gz
rm *.gz
cd curl-7.44.0
./configure --with-ssl
make
make install
service apache2 restart
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-curl -y
service apache2 restart
