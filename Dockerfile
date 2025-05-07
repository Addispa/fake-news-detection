# ─────────────────────────────────────────────────────────────────────────────
#  Dockerfile for a Jupyter Notebook and other dependencies
# ─────────────────────────────────────────────────────────────────────────────
# Use the official Jupyter base image
FROM jupyter/scipy-notebook:latest

# Set the working directory
WORKDIR /home/nlpstudent/Fakenewsproject
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy the Jupyter notebook into the container
COPY . .

# Install additional Python packages
# Download NLTK data
# Install Jupyter tools

RUN python -m nltk.downloader punkt stopwords wordnet vader_lexicon
RUN pip install --no-cache-dir pandas spacy numpy matplotlib seaborn scikit-learn
RUN python -m spacy download en_core_web_sm

# Expose the port for Jupyter Notebook
EXPOSE 5555

# Command to run Jupyter Notebook server
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.allow_origin='*'"]



