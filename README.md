# slurm-tools

## About

This is a repository with shell scripts, manuals and documentation about slurm.
On the cluster of the Max Planck Institute for Biology of Ageing, it is
available with the command:

```
module load slurm-tools
```

## Tools

```
sterm  # load an interactive bash on a node
spart  # show information about all partitions (queue), or a specific only
sjob   # show information about a job in tabular format
sgrep  # grep on the slurm queue
```

## Examples for sbatch

Find example script for `sbatch` in the `examples/` folder.
Modify them and run them, e.g.:

```
sbatch examples/hugemem.sh
```

## License

> Copyright 2015:
> * Tobias Jakobi <TJakobi@age.mpg.de>
> * Sven E. Templer <templer@age.mpg.de>
