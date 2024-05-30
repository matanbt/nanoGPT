#! /bin/sh

#SBATCH --job-name=prepare
#SBATCH --output=logs/prepare.out # redirect stdout
#SBATCH --error=logs/prepare.err # redirect stderr
#SBATCH --partition=cpu-killable  #killable  #studentbatch # (see resources section)
#SBATCH --time=1000 # max time (minutes)
#SBATCH --signal=USR1@120 # how to end job when time's up

## Compute:
# SBATCH --nodes=1 # number of machines
#SBATCH --ntasks=8 # number of processes
#SBATCH --mem=50000 # CPU memory (MB)
#SBATCH --gpus=0

# Init env:
export PYTHONPATH="$PWD"  # set the Python's path to the current path
export HF_HOME="/home/sharifm/students/matanbentov"  # modify to home defaco dir

# Prepare data:
python data/openwebtext/prepare_BertTokenizer.py
