#! /bin/sh

#SBATCH --job-name=test_run_coml_cross_entropy_loss_fold_4
#SBATCH --output=./logs/test_run_coml_cross_entropy_loss_fold_4.out
#SBATCH --error=./errors/test_run_coml_cross_entropy_loss_fold_4.err
#SBATCH --partition=gpu-p1
#SBATCH --time=1400 # max time (minutes)
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=16G
#SBATCH --cpus-per-task=12 # CPU cores per process
#SBATCH --export=ALL                  # Export your environment to the compute node

source ./.venv/bin/activate
module load cuda/11.8.0-r465
nvidia-smi
export CUDA=1


python -u train_crossEntropyLoss.py
