Creating an SSH key
The SSH key resides on your machine in the folder ~/.ssh

ssh-keygen -t rsa -b 4096  -f [filename]

Add the public key to your GitHub account

create a new repository on the command line

echo "# UsefullGitCommands" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ghosh-sarbajit/UsefullGitCommands.git
git push -u origin main

push an existing repository from the command line

git remote add origin https://github.com/ghosh-sarbajit/UsefullGitCommands.git
git branch -M main
git push -u origin main

3. Delete a file from a GitHub repository from the terminal
git rm [file]
If the file has some edit
git rm -f [file]

4. To know which branch you are in
git rev-parse --abbrev-ref HEAD

5. To view diff of your local and remote branch
git diff [branch name]

4. GitHub push
git add -A
git commit -m 'YourMsg'
git push
