## Creating a new conda env
conda env list

conda create --name EnvName python=3.8

conda activate EnvName

conda deactivate

**Rclone and OneDrive**

rclone --vfs-cache-mode writes mount OneDrive: ~/OneDrive &

https://drive.google.com/file/d/[fileID]/view?usp=sharing

gdown 'https://drive.google.com/uc?export=download&id=[fileID]'

rclone copy ~/file OneDrive:/PATH
