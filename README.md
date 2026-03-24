## Running a Small Training (with Limited Data)

# 1. Clone the repository
git clone https://github.com/neoeyal/audio_prod_send
cd audio_prod_send

# 2. (Optional) Create and activate a virtual environment
conda create -n temp_venv python=3.10 -y
conda activate temp_venv

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run training
python -u train_crossEntropyLoss.py
# Results and logs will be saved in the `results` directory

## Running on GPU (Optional)

# Edit `train_crossEntropyLoss.py`:
# - Comment out line 24
# - Uncomment line 23

# If using Slurm, request a supported GPU:
#SBATCH --constraint=geforce_rtx_2080|geforce_rtx_3090|a5000|a6000|tesla_v100|quadro_rtx_8000|l40s|h100