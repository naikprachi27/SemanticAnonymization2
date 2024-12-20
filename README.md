# Balancing Privacy and Utility: Semantic Anonymization of Time-aware Knowledge Graphs

This repository contains the source code of the paper "Balancing Privacy and Utility: Semantic Anonymization of Time-aware Knowledge Graphs". The paper proposes a novel approach to anonymizing knowledge graphs by leveraging sentence embeddings to capture semantic nuances and applying k-anonymity and l-diversity to enhance privacy. This approach protects users' data from several attacks like semantic similarity attack, linkage attack, re-identification attack, homogeneity attack, background knowledge attack, etc. 

## Installation
* Python 3: https://www.python.org/downloads/
## Required libraries
This repository requires the following libraries to be installed:
* sentence-transformers (pip install -U sentence-transformers)
* scikit-learn-extra
* pymoo (pip install -U pymoo)
* ampligraph (pip install ampligraph)
* tensorflow (pip install tensorflow==2.12)

## Structure
This repository is organized into the following folders and files:
* `datasets`: Contains Original_dataset
* `Anonymised_Data_raw`: Contains anonymized data in raw format

## Anonymization script
