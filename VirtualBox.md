### Install Guest Additions CD Image on VirtualBox

sudo apt-get purge libreoffice*

sudo apt-get autoremove --purge

sudo apt-get clean

dpkg -l | grep libreoffice

sudo apt-get update

sudo apt-get install build-essential gcc make perl dkms

reboot
