#!/bin/bash

#SBATCH --job-name=test_run_coml_contrastive_classifier_fold_4
#SBATCH --output=./logs/test_run_coml_contrastive_classifier_fold_4.out
#SBATCH --error=./errors/test_run_coml_contrastive_classifier_fold_4.err
#SBATCH --partition=studentkillable
#SBATCH --signal=USR1@120
#SBATCH --time=600 # max time (minutes)
#SBATCH --gres=gpu:2
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=50000
#SBATCH --cpus-per-task=12 # CPU cores per process
#SBATCH --constraint=geforce_rtx_2080|geforce_rtx_3090|a5000|a6000|tesla_v100|quadro_rtx_8000|l40s|h100


source /vol/scratch/imryziv/anaconda3/etc/profile.d/conda.sh
conda activate audio_env

nvidia-smi
export CUDA=1

# Disk quota exceeded in default $HOME
export TORCH_HOME=/vol/scratch/imryziv/.cache/torch
mkdir -p $TORCH_HOME


python -u train_classifier.py
