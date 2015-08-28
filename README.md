Simple Midori-based TV for Raspberry Pi with web interface for setting new content to display

##Easy way

Download installer and execute it
```
curl -O https://raw.githubusercontent.com/G07cha/RaspberryTV/master/install.sh
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
That's it! Now you can access to web interface by entering http address with yours RaspberryPi's IP

If you encoured problem, try to determinate where it is by following [Hard way](#hard-way) guide

##Hard way

First of all update your Raspberry Pi after installing Raspbian:
```
sudo apt-get update
sudo apt-get upgrade
```
Install required packages
```
sudo apt-get install midori lighttpd php5-common php5-cgi php5 cec-utils git
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
