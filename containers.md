# Distrobox

distrobox create --image ubuntu:22.04 --name ubuntu-2204

distrobox enter ubuntu-2204

distrobox list

distrobox-stop ubuntu-2204

distrobox-rm ubuntu-2204

distrobox-export --app firefox --name ubuntu-box

distrobox-export --unexport --bin neofetch --name ubuntu-box

distrobox create --image ubuntu:22.04 --name ubuntu-2204 --share /path/to/directory # Sharing Files and Directories

# Docker
