# An Empirical Investigation of Election Results in Belarus 

This analysis examines the election results in Belarus.
The primiary focus of this project is to examine the potential of different machine learning methods in Economics. 
Henceforth, the following analysis looks at way to assist economic reserach without violating standard economic assumptions.
The focus shifts from traditional prediction tasks to feature selection and data exploration. 

Our project interlinks code in Python and R, using the best features of each programming language.
R coding chunks start with %%R in the cell. For replication, please download the datafiles in our datafiles folder. 

To reproduce these results, please download the datafiles in the data folder.

# Data Analysis in Python

* 1-6 file: 'data_merge.ipynb' 
* 7-11 'RF_reg.ipynb'

1. Data Cleaning 
2. Joining the tables
3. Creating strings with occupations of all the members of the commission
4. Creating dummies for the commission ids according to occupations that the members of commission have
5. Merging commission features with the main data set
6. Translating to English names of the columns
7. Creating dummies for region
8. Creating the Lukashenko share of votes variable
9. Selecting hyperparameters that we want to check in RandomizedSearchCV
10. Searching for the best parameters
11. Plotting feature importances

#  Data Analysis in R (ML_Elections_R.ipynb)
We undertake the regression models in R. 
The following sections are structured as follows: 

1.   Lasso Regression versus Naive Regression model
> *  Splitting the Data
> *  Correlation Plot
> * Skimming the Dataset
> * Naive Regression Model 
> * Lasso Model 
> * Cross Validation 
> * MSE for Prediction on Test and Training Data 
> * Feature Importance for the Lasso Model 
2.   Regression model with the selected features for LASSO
> * Evaluation and Considerations
3.   Exploration of unsupervised learning methods: Principal Component Analysis 
> * PCA Analysis 
> * Screeplot 
> * Further Considerations future Research 
4.   Exploration of unsupervised learning methods: Latent Dirichlet Allocation 
> * Data Cleaning for Text Data 
> * Topic Model with VEM 
> * Topic Model with Gibbs Sampling
> * Considerations and Shortcomings for further research 

5.   Geospatial Analysis of Voting Behaviour 
> * Share of Votes for Lukashenko 
> * Looking at previous election year (1994) 

6. Appendix 
> * Random Forest in R for Feature Importance
> * Geospatial Map of Total Votes
