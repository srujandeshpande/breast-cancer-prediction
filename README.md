# Breast Cancer Prediction
Breast Cancer Prediction for Data Analysis Project  

[![Made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
![Made-with-R](https://img.shields.io/badge/Made%20with-R-blue)
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/11EVPPXdvC3P0ojUXZjiriFeFG62W1QAV?usp=sharing)

---

## Details
Subject: Data Analytics  
Team Name: **DataDemystifiers**  
Team Members:
<table>
<tr><th>Name</th><th>SRN</th></tr>
<tr><td>Vaibhav Gupta</td><td>PES2201800093</td></tr>
<tr><td>Srujan Vasudevrao Deshpande</td><td>PES2201800105</td></tr>
<tr><td>Aditya M Shetty</td><td>PES2201800169</td></tr>
<tr><td>Safa Hurayn</td><td>PES2201800392</td></tr>
</table>

## Dataset Source
Breast Cancer Wisconsin Dataset from Kaggle
https://www.kaggle.com/uciml/breast-cancer-wisconsin-data


## Components
### Exploratory Data Analysis
The Exploratory Data Analysis for this project was done using R. The results can be found in the file [`EDA.Rmd`](https://srujandeshpande.github.io/breast-cancer-prediction/EDA.nb.html).

### Prediction
The model used in the project was a Support Vector Machine. The prediction was done using Python and the code can be found in the file [`Predict.ipynb`](https://github.com/srujandeshpande/breast-cancer-prediction/blob/main/Predict.ipynb).

## SVM Parameters
C=1.0
break_ties=False
cache_size=200
class_weight=None
coef0=0.0
decision_function_shape='ovr'
degree=3
gamma='scale'
kernel='rbf'
max_iter=-1
probability=False
random_state=None
shrinking=True
tol=0.001 
verbose=False

## Genetic Algorithm Parameters
SVC()
cv=5
verbose=1
scoring="accuracy"
max_features=10
n_population=50
crossover_proba=0.5
mutation_proba=0.2
n_generations=40
crossover_independent_proba=0.5
mutation_independent_proba=0.05
tournament_size=3
n_gen_no_change=10
caching=True
n_jobs=1


## Useful links
- Dataset Download https://www.kaggle.com/uciml/breast-cancer-wisconsin-data/download
- Prediction Notebook https://colab.research.google.com/drive/11EVPPXdvC3P0ojUXZjiriFeFG62W1QAV?usp=sharing
- Video
- Report
