** SLURM commands **

sinfo

scontrol show node NodeName

squeue -w NodeName

squeue -w innmi1srh2-p018 -o "%.18i %.8u %.9P %.20V %.6D %.10M %.10l %.6C %R"

squeue -j JobID -o "%.18i %.8u %.9P %.20V %.6D %.10M %.10l %.6C %R"

