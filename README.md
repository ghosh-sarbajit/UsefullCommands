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

rclone --vfs-cache-mode writes mount OneDrive: ~/OneDrive &

```https://drive.google.com/file/d/[fileID]/view?usp=sharing```

gdown '```https://drive.google.com/uc?export=download&id=[fileID]```'

rclone copy ~/file OneDrive:/PATH

**Creating an SSH key**

The SSH key resides on your machine in the folder ~/.ssh

ssh-keygen

Move to ~/.ssh and add the public key to your GitHub account (*.pub file)

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

**PDF Manipulation**

pdfseparate

pdfunite

pdftk pdf1.pdf pdf2.pdf cat output merged.pdf

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


