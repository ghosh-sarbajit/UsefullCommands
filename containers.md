# Distrobox

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

# Docker

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

\# detach from a running container Ctrl + P   then   Ctrl + Q

docker run -it -d -p 8080:80 nginx        # host → container

docker run -it -d --restart --unless-stopped -p 8080:80 nginx

docker stop <hash>

docker commit <IDNum>  <NewName>  <Image> lltv/apache-test:1.0

docker stop <ID>
