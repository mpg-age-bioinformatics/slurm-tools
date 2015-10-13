#!/bin/bash

# This script shows how to run jobs depending on each other.
# In this examples we use HERE docs to submit the sub-scripts.
# Variables get resolved by the HERE doc, see also arrays.sh.
# You can run this script with ./dependencies.sh copy/paste
# the content to a shell.

# submit job 1

pid=$(sbatch << HERE
#!/bin/bash
#SBATCH -J job1
echo "job1 started"
sleep 5
echo "job1 finished"
HERE
)

# extract slurm job ID

pid=${pid##* }
echo $pid

# submit job 2, $pid will be resolved by the HERE doc

sbatch << HERE
#!/bin/bash
#SBATCH -J job2
#SBATCH -d after:$pid
echo "job2 started"
sleep 5
echo "job2 finished"
HERE

# show the queue
squeue | egrep "job[12]"

