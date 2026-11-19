# for VM

sudo apt-get purge libreoffice*

sudo apt-get clean

sudo apt-get autoremove --purge

dpkg -l | grep libreoffice

sudo apt-get update

sudo apt-get install build-essential gcc make perl dkms

Install Guest Additions CD Image on VirtualBox

# for real machine

```
sudo apt-get install build-essential gcc make perl dkms python3-pip vim net-tools git tmux screen openssh-server ffmpeg tree htop

sudo apt-get install gedit gimp shotwell dia xfig obs-studio xournalpp vlc curl ranger okular qpdf pdftk img2pdf

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

# Some open-source software

**Electronic**

KiCad — Professional Electronics Design

**GIS software**

QGIS — Making Sense of Geographic Data

**Audio**

Audacity - digital audio editor

Ardour — Professional Audio, Open Source

**Images**

GIMP -  raster graphics (Photo editing and image manipulation) editor

Krita - raster graphics (Digital painting and illustration) editor

Inkscape - vector graphics editor

darktable — The Science of Light

Scribus — Professional Publishing

**Video**

Blender - 3D computer graphics software

Natron — Behind the Visual Effects

Kdenlive — non-linear video editing

**Coding**

GNU Octave — From Textbook to Scientific Computing

**Civil**

FreeCAD — The Long Road to Version 1.0

Mayo - The Open-Source 3D CAD Viewer and Converter

**Browser**

Browsh - Terminal-based browser

**Music**

LilyPond - music notation for everyone
