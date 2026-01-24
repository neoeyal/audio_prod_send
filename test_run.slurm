#! /bin/sh

#SBATCH --job-name=test_run
#SBATCH --output=./logs/test_run.out
#SBATCH --error=./errors/test_run.out
#SBATCH --partition=studentkillable
#SBATCH --time=1400 # max time (minutes)
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=50000
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gpus=1

python -u train_crossEntropyLoss.py