**SLURM commands**

sinfo

scontrol show node NodeName

squeue -w NodeName

squeue -w innmi1srh2-p018 -o "%.18i %.8u %.9P %.20V %.6D %.10M %.10l %.6C %R"

squeue -j JobID -o "%.18i %.8u %.9P %.20V %.6D %.10M %.10l %.6C %R"

srun --nodelist=NodeName --partition=iitk_h200 --gres=gpu:2 --cpus-per-task=50 --mem=500G --time=120:00:00 --pty bash

