# Elections-Belarus
Project for Machine Learning for Economics 

This analysis is devided into numerous sections: 

The first section is data pre-processing.

The subsequent section examines different tools for feature selection, specifically lasso and random forest models. 
Subsequently, we can run a regular OLS regression with the different features.

Thereafter follows a section on topic modeling. 
For the topic models we create one big word corpus.
Based on this corpus we can then build our topic models using various sampling methods, also looking at what features matter most.

# Data 


## Random Forest 


# RStudio: Lasso Regression, LDA(#TODO) , Mapping (#TODO)

We undertake the Lasso Regression R. 
Further we again briefly explore the given data and the respective features.
We use the same data split but different seeds for the R and Python parts.

## Exploratory Data Analysis

* Histogram comparing our dependent variable in overall, test and training data set 
* Skimr (Histograms, intervals, min, max, summary statistics)
* Correlation Plots

## Analysis

To evaluate the performance of our lasso model, we compare a lasso specification with a naive model.
First we compare performance on the training data and subsequently on the test data. 
As a performance measure we pick the MSE.

### Prediction Training Data 

On the training data our naive regression performs better and gets a lower MSE. 

### Prediction Test Data

On the test data our lasso model outperforms the naive model and gets a lower MSE. 

### OLS Regression (LASSO)

Based on the Lasso Regression, the following variables were selected and then modelled on the test set (seed 123). 
Significance levels are indicated in brackets (*** - 0.001, ** - 0.01, * - 0.05, .- 0.1).

* Early Voting (***)
* Residence (***)
* Voting on Election Day (***)
* Dropped()
* Against_all(.)
* Commission ()
* Spoiled ()
* longitude (***)
* army (.)
* educ (**)
* science ()
* profunion (**)
* econ (*)

