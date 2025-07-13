# for VM

sudo apt-get purge libreoffice*

sudo apt-get autoremove --purge

sudo apt-get clean

dpkg -l | grep libreoffice

sudo apt-get update

sudo apt-get install build-essential gcc make perl dkms

Install Guest Additions CD Image on VirtualBox

# for real machine

sudo apt-get install build-essential gcc make perl dkms python3-pip vim net-tools git tmux screen openssh-server ffmpeg tree

sudo apt-get install gedit gimp shotwell dia xfig obs-studio xournalpp vlc

sudo apt -y install bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu qemu-kvm # KVM

reboot

other things to install: R, RStudio, Miniconda, VSCode, VirtualBox

sudo apt install fonts-liberation fonts-freefont-ttf fonts-noto # free fonts

sudo apt install ubuntu-restricted-extras # contains microsoft proprietary font, which will download in a exe container

sudo apt-get install geogebra kalgebra xcas # for math softwares

# some important files

ssh client

ssh localhost

/etc/ssh/sshd_config


sudo vim /etc/default/grub

sudo update-grub
