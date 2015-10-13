#!/bin/bash

#SBATCH -a 1-10
#SBATCH -o slurm-%a.out

echo "###
# Job array example
# date $(date)
# hostname $(hostname)
# array ID ${SLURM_ARRAY_ID}
# task ID  ${SLURM_ARRAY_TASK_ID}
###"
exit

# Run this script as ./arrays.sh or copy/paste the following part with the 
# HERE doc example into a shell. If you use a HERE doc, escape SLURM (and other) 
# variables (e.g. \${SLURM...}) so that it is not resolved while forwarding the content!

sbatch << HERE
#!/bin/bash
#SBATCH -a 1-10
echo "No escape: ${SLURM_ARRAY_TASK_ID}"
echo "Escape:    \${SLURM_ARRAY_TASK_ID}"
HERE
