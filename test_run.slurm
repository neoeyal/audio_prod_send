#! /bin/sh

#SBATCH --job-name=test_run4
#SBATCH --output=./logs/test_run4.out
#SBATCH --error=./errors/test_run4.out
#SBATCH --partition=studentkillable
#SBATCH --time=1400 # max time (minutes)
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=50000
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gpus=1
#SBATCH --constraint=geforce_rtx_2080|geforce_rtx_3090|a5000|a6000|tesla_v100|quadro_rtx_8000|l40s|h100

python -u train_crossEntropyLoss.py