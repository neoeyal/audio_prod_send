import urllib.request
import soundata


# Initialize the dataset
dataset = soundata.initialize('urbansound8k', data_home='./data/US8K')

# This will download the dataset and the index to the specified folder
dataset.download()