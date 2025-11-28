## Installing Anaconda
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh

bash ~/Anaconda3-2024.10-1-Linux-x86_64.sh

PREFIX=/home/user/anaconda3 (output produced after installation)

source /home/user/anaconda3/bin/activate

conda init

source ~/.bashrc

## Creating a new conda env
source ~/.bashrc

conda env list

conda create --name EnvName python=3.8

conda activate EnvName

conda deactivate

conda env remove --name EnvName

**Rclone and OneDrive**

rclone listremotes

rclone --vfs-cache-mode writes mount OneDrive: ~/OneDrive & (Make sure that folder is created beforehand ~/OneDrive or other)

rclone copy ~/file OneDrive:/PATH

rclone configuration file: ~/.config/rclone/rclone.conf

**Creating an SSH key**

The SSH key resides on your machine in the folder ~/.ssh

ssh-keygen

Move to ~/.ssh and add the public key to your GitHub account (*.pub file)

**Creating an SSH Key with particular file name**

ssh-keygen -f file

ssh-copy-id -i file.pub user_name@ip_address

**create a new repository on the command line**

echo "# UsefullGitCommands" >> README.md

git init

git add README.md

git commit -m "first commit"

git branch -M main

git remote add origin ```https://github.com/user/repo.git```

git push -u origin main

**push an existing repository from the command line**

git remote add origin ```https://github.com/user/repo.git```

git branch -M main

git push -u origin main

**Delete a file from a GitHub repository from the terminal**

git rm \[file\]

If the file has some edit

git rm -f \[file\]

To know which branch you are in

git rev-parse --abbrev-ref HEAD

**To view diff between your local and remote branch**

git diff \[branch name\]

GitHub push

git add -A

git commit -m 'YourMsg'

git push

**Tmux**

tmux new-session -s \[SessionName\]

New Pane: Ctrl + b %

New Vertical: Pane Ctrl + b "

Toggle to the last active pane: Ctrl + b ;

tmux attach-session -t \[SessionName\]

for i in {1..5}; do
  tmux new-session -d -s $i
  tmux send-keys -t $i "cd /path/to/the/folder" C-m
  tmux send-keys -t $i "conda activate EnvName" C-m

**PDF Manipulation**

pdfseparate

pdfunite

pdftk pdf1.pdf pdf2.pdf cat output merged.pdf # merge pdf

pdftk input.pdf cat 51-80 output output.pdf # extract pages

qpdf --password='CURRENT_PASSWORD' --decrypt protected.pdf unlocked.pdf # remove password authentication

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=foo-compressed.pdf foo.pdf

**Important things to install after fresh Ubuntu Installation**

sudo apt install openssh-server net-tools

**SSH Related commands**

sudo systemctl status ssh

sudo systemctl enable --now ssh

**ELf file**

readelf -h [file]

readelf -s [file]

objdump --disassemble [file] 

**Gdown**

gdown \[FileId\]

gdown --folder \[FolderID]

**Vim Motions**

:sp [file]

:vsp [file]

:vsp

(ctrl + w) w

:Explore

**VM control**

VBoxManage list vms

VBoxManage list runningvms

VBoxManage controlvm "VmName" poweroff

VBoxManage showvminfo "VmName"

**obs-studio**

sudo apt install v4l2loopback-dkms

sudo add-apt-repository ppa:obsproject/obs-studio

sudo apt update

sudo apt install obs-studio

**Video manipulation**

ffmpeg -ss [start_time] -to [end_time] -i input.mp4 -c copy output.mp4

ffmpeg -i input_video.mp4 -vn -acodec copy output_audio.aac

**Open a profile in a GNOME Terminal**

gnome-terminal --tab --profile="Bharati"

**Toggle mouse in Tmux**

In ~/.tmux.conf write the follwing line

bind m set -g mouse \; display "Mouse: #{?mouse,ON,OFF}"

Then in any tmux session press Ctrl+b followed by :source-file ~/.tmux.conf

**Format a Pendrive**

sudo umount /dev/sdb1

sudo mkfs.vfat -I /dev/sdb

**Compression**

tar -cvf folder.tar.xz -I 'xz -9e -T100' folder
