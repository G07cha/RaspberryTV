#Updating
sudo apt-get update
sudo apt-get upgrade

#Installing required software
sudo apt-get install -y midori lighttpd php5-common php5-cgi php5 cec-utils git

#Enabling PHP handling and reloading server
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload

#Fixing ownership
sudo chown www-data:www-data /var/www
sudo chmod 775 /var/www
sudo usermod -a -G www-data pi

#Pulling from repository
cd /var/www && sudo rm * && sudo git clone https://github.com/G07cha/RaspberryTV.git .

#Fixing permissions for files
sudo chmod a+w /var/www/link
