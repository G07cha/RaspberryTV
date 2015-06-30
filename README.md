Simple Midori based TV for Raspberry Pi with web interface

Easy way
-------

Download installer and execute it
```
curl https://github.com/G07cha/RaspberryTV/blob/master/install.sh
chmod a+x ./install.sh
./install.sh
```
Open crontab
```
crontab -e
```
Add next jobs on the end of the file:
```
@reboot /var/www/startBrowser.sh
0 9 * * * /var/www/wake.sh
0 20 * * * /var/www/sleep.sh
```
Hard way
-------

First of all update your Raspberry Pi after installing Raspbian:
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
And allow write to link file
```
sudo chmod a+w /var/www/link
```
Finally setup cron jobs to start browser on reboot and turn off monitor at night
```
crontab -e
```
Add next jobs:
```
@reboot /var/www/startBrowser.sh
0 9 * * * /var/www/wake.sh
0 20 * * * /var/www/sleep.sh
```

Done, you are awesome!
