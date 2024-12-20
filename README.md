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
* `datasets`: Currently three datasets FB13, YAGO and ICEWS14 are available
* `Anonymised_Data_raw`: Contains anonymized data in raw format

## Datasets

## Anonymization script

### Snapshot Creation
Creating snapshots: from the temporal dataset folder Temporal_Dataset, creates snapshots in the folder Snapshots

<code>python SnapshotsCreationFreebase.py</code>

<code>python SnapshotsCreationYago.py</code>


### Preparing data for anonymizing
we assign random sensitive value to entities that do not have a sensitive values. creates sentences dataset ready for anonymization

<code>python DatasetsComparison_ForAnon.py --data=fb13</code>

Supported datasets: `fb13`, `yago`, `icews14`

### Anonymization

<code>python Anonymization_Process.py --data=fb13</code>

Gives information about fake nodes, discarded nodes, Information loss, average sensitive attribute similarities within groups, average sentence embeddings similarities within groups, creates raw anonymized data in folder Anonymised_Data_raw.

### Generating anonymized triples
Generating triples from anonymized raw data from folder Anonymised_Data_raw: 

<code>python TriplesGenerationFromAnonymizedData.py</code>

### Ideal values of k and l
Needs SE and SA distances

<code>python k_l_optimization.py</code>

### Knowledge graph embeddings