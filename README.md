## Creating a new conda env
conda env list

conda create --name EnvName python=3.8

conda activate EnvName

conda deactivate

**Rclone and OneDrive**

rclone --vfs-cache-mode writes mount OneDrive: ~/OneDrive &

```https://drive.google.com/file/d/[fileID]/view?usp=sharing```

gdown '```https://drive.google.com/uc?export=download&id=[fileID]```'

rclone copy ~/file OneDrive:/PATH

**Creating an SSH key**

The SSH key resides on your machine in the folder ~/.ssh

ssh-keygen -t rsa -b 4096  -f \[filename\]

Add the public key to your GitHub account

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

