apt-get update -y
apt-get upgrade -y
apt-get install build-essential apache2 php5 php5-cli curl libcurl3 libcurl3-dev php5-curl -y
touch /var/www/index.php
chmod 777 /var/www/index.php
echo "<?php phpinfo();" >> /var/www/index.php
service apache2 restart
