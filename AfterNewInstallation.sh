### for VM
### Install Guest Additions CD Image on VirtualBox

sudo apt-get purge libreoffice*

sudo apt-get autoremove --purge

sudo apt-get clean

dpkg -l | grep libreoffice

sudo apt-get update

sudo apt-get install build-essential gcc make perl dkms

# for real machine

sudo apt-get install build-essential gcc make perl dkms python3-pip vim net-tools git tmux screen openssh-server ffmpeg

sudo apt-get install gedit gimp shotwell dia xfig obs-studio xournalpp vlc

reboot

other things to install: R, RStudio, Miniconda, VSCode, VirtualBox

# some important files

ssh client
ssh localhost
/etc/ssh/sshd_config

sudo vim /etc/default/grub
sudo update-grub
