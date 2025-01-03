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
* `datasets`: Three datasets FB13, YAGO and ICEWS14 are available in Datasets/Original_Dataset folder.
* `Anonymised_Data_raw`: Contains anonymized data in raw format. Present in Anonymised_Data_raw folder.
* `Sentences Dataset`: Datasets/Sentences_Dataset folder contains data in sentences format. These sentences will later be clustered as per their embeddings.


## Anonymization process

### Snapshot Creation
Creating snapshots: from the temporal dataset folder Temporal_Dataset, creates snapshots in the folder Snapshots

<code>python SnapshotsCreationFreebase.py</code>

<code>python SnapshotsCreationYago.py</code>


### Preparing data for anonymizing
We assign random sensitive value to entities that do not have a sensitive values. We also create sentences dataset ready for anonymization

<code>python DatasetsComparison_ForAnon.py --data=fb13</code>

Supported datasets: `fb13`, `yago`, `icews14`

### Anonymization

<code>python Anonymization_Process.py --data=fb13</code>

Gives information about fake nodes, discarded nodes, Information loss, average sensitive attribute similarities within groups, average sentence embeddings similarities within groups, creates raw anonymized data in folder Anonymised_Data_raw.

### Generating anonymized triples
Generating triples from anonymized raw data from folder Anonymised_Data_raw: 

<code>python TriplesGenerationFromAnonymizedData.py</code>

### Ideal values of k and l
Needs SE and SA distances to solve Multi-Objective Optimization Problem.

<code>python k_l_optimization.py</code>

### Knowledge graph embeddings

We have to create anonymised Train data, and non-anonymised test and valid data. Train models with both non-anonymised and anonymised train data, and test both the models with non-anonymised test and valid data.

<code>python ampligraph_transe_fb13.py</code>