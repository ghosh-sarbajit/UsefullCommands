# for VM

sudo apt-get purge libreoffice*

sudo apt-get autoremove --purge

sudo apt-get clean

dpkg -l | grep libreoffice

sudo apt-get update

sudo apt-get install build-essential gcc make perl dkms

Install Guest Additions CD Image on VirtualBox

# for real machine

```
sudo apt-get install build-essential gcc make perl dkms python3-pip vim net-tools git tmux screen openssh-server ffmpeg tree htop

sudo apt-get install gedit gimp shotwell dia xfig obs-studio xournalpp vlc curl ranger okular

sudo apt -y install bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu qemu-kvm gnome-boxes podman

sudo apt install code distrobox # works in ubuntu 24

reboot

```


other things to install: R, RStudio, Miniconda, VScode, VirtualBox

sudo apt install fonts-liberation fonts-freefont-ttf fonts-noto # free fonts

sudo apt install ubuntu-restricted-extras # contains microsoft proprietary font, which will download in a exe container

### for math software

```
sudo apt-get install geogebra kalgebra xcas 
```

### for astronomy

```
sudo apt-get install kstars stellarium
```
another good one is celestia

# some important files

ssh client

ssh localhost

/etc/ssh/sshd_config

sudo vim /etc/default/grub

sudo update-grub

# Transfer gnome terminal profiles

dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.conf

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.conf
