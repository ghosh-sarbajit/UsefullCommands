# Distrobox

```bash
distrobox create --image ubuntu:22.04 --name ubuntu-2204

distrobox create --image docker.io/library/archlinux:latest --name myarch

distrobox enter ubuntu-2204

distrobox list

distrobox-stop ubuntu-2204

distrobox-rm ubuntu-2204

distrobox-export --app firefox --name ubuntu-box

distrobox-export --bin /usr/sbin/csvlens --export-path ~/.local/bin

distrobox-export --unexport --bin neofetch --name ubuntu-box

distrobox create --image ubuntu:22.04 --name ubuntu-2204 --share /path/to/directory # Sharing Files and Directories
```

# Docker

```bash
sudo apt install docker.io

sudo docker run hello-world

sudo usermod -aG docker jay   # (logout and log back in)

docker images

docker search ubuntu

docker run ubuntu

docker ps -a

docker run -it ubuntu /bin/bash

docker run -it -d ubuntu

docker attach <hash>

# detach from a running container Ctrl + P   then   Ctrl + Q

docker run -it -d -p 8080:80 nginx        # host → container

docker run -it -d --restart --unless-stopped -p 8080:80 nginx

docker stop <hash>

docker commit <IDNum>  <NewName>  <Image> lltv/apache-test:1.0

docker stop <ID>
```

# Singularity

```bash
#################

singularity build --fakeroot r.sif r.def

singularity exec r.sif Rscript myscript.R

singularity run r.sif

singularity exec --fakeroot r_sandbox/ Rscript -e 'install.packages("tidyverse")' # will not work due to root issue

#################

singularity build --sandbox r_sandbox r.def

singularity build --sandbox r_sandbox r.sif

singularity shell --writable --fakeroot r_sandbox # interactivate

singularity build r_new.sif r_sandbox # sandbox to sif container

singularity exec --writable --fakeroot r_sandbox Rscript -e 'install.packages("tidyverse")' # also run a single command

singularity exec --writable --fakeroot r_sandbox Rscript myscript.R
```


# Debian GNU/Hurd in VirtualBox 

```bash
VBoxManage createvm --name "Debian-Hurd" --ostype "Other_64" --register

VBoxManage modifyvm "Debian-Hurd" --memory 4096 --cpus 1 --firmware bios --ioapic on --boot1 disk --nic1 nat --nictype1 82540EM --audio-enabled off

VBoxManage storagectl "Debian-Hurd" --name "IDE Controller" --add ide

file ~/ISOs/debian-hurd-amd64-20260314.img

VBoxManage convertfromraw ~/ISOs/debian-hurd-amd64-20260314.img ~/ISOs/debian-hurd-amd64-20260314.vdi --format vdi

VBoxManage storageattach "Debian-Hurd" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium ~/ISOs/debian-hurd-amd64-20260314.vdi

VBoxManage modifyvm "Debian-Hurd" --vrde on --vrdeport 5000

wget https://download.virtualbox.org/virtualbox/7.2.0/Oracle_VirtualBox_Extension_Pack-7.2.0.vbox-extpack

sudo VBoxManage extpack install Oracle_VirtualBox_Extension_Pack-7.2.0.vbox-extpack

VBoxManage startvm "Debian-Hurd" --type headless

VBoxManage list runningvms

VBoxManage showvminfo "Debian-Hurd" | grep VRDE

ss -tulpn | grep 5000

VBoxManage controlvm "Debian-Hurd" poweroff

VBoxManage modifyvm "Debian-Hurd" --uart1 0x3F8 4 --uartmode1 server /tmp/hurd-console

sudo apt install socat

socat STDIO UNIX-CONNECT:/tmp/hurd-console
```

# KVM/QEMU

```bash
kvm -m 2G -drive file=debian-hurd-amd64-20260314.img,format=raw,cache=writeback
```
