### Fake news detection project
This project is focused on introducing the major industry standard applications of fake news data processing for beginners. Plenty of fake news detection and classification projects and models are out there online however it is often the case that the project or the model is complicated and is not easier for beginners to visualize how fake news data processing and detection is practiced in industries. Hence, this modeling project assumes to address this issue with simplified workflows. Details of the modeling sections and included details are briefed here.
The project is focused on identifying four major activities of fake news data processing in the industries possibly in social media industries. These include POS tags and NER tags extraction, Text data preprocessing, Sentiment Analysis and Classification. Extraction of tags was made to visualize the frequency of words in fake and real datasets. This is presented in tabular and in graphical format for easier visualization. Sentiment Analysis was applied using the Vader sentiment analyzer which is usually preferred analyzer for social media datasets. Also, tabular and graphical analysis results are presented for sentiment results. This is one of the major activities in social media companies to visualize the sentiment of fake datasets and real datasets. The text classification was made based on the Logistic regression prediction model and TFIDF vectorizer.  The accuracy and F1 scores of the classifier based on the dataset provided was 93%. 
In addition, different libraries that are applied in industries are implemented in the model. These involve pandas, spacy, NLTK, etc. These libraries come in handy when processing a fake news dataset. Hence, it is found to be essential to apply those here.
## Getting Started
This repository contains a Docker setup for running fake news project. 
### Prerequisites

- Docker installed on your machine.

### Building the Docker Image

```bash
docker build -t project.ipynb  .
#running the docker
  docker run -p 5555:8888 project
  You can access Jupyter Notebook at http://localhost:5555.
#Data access
 This model was on the Kaggle dataset provided in this link , https://www.kaggle.com/datasets/nopdev/real-and-fake-news-dataset. Description and script to download the dataset from the Kaggle is provided within the script. It is also important to note data links in the code should be changed with the address of the downloaded data.
 
 

