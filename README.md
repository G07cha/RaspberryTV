Simple Midori based TV for Raspberry Pi

First of all update your Raspberry Pi:
```
  sudo apt-get update
  sudo apt-get upgrade
```
Next install Midori, any server that you prefer and PHP module
```
sudo apt-get install midori lighttpd php5-common php5-cgi php5
```
Enable handling PHP commands and reload server:
```
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload
```
Change the directory ownership:
```
sudo chown www-data:www-data /var/www
sudo chmod 775 /var/www
sudo usermod -a -G www-data pi
```
Than you can pull repository:
```
cd /var/www
sudo git clone https://github.com/G07cha/RaspberryTV.git .
```
Or clone to any another place and copy files to /var/www.

