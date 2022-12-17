# NBA DFS Projections

## Introduction
NBA DFS projections are given for each player for their upcoming competitions. The projection is the player's expected DF Points for the next contest. There are many free and paid sites that give their projections for players, some are junk and some are based on very complicated models. I did not want to pay for my projections so I wrote a projection models in Python based on both traditional and advanced statistics gathered from Stathead.com. I then developed a Linear Regression Model, a Random Forest Regressor Model, and an Ensemble Model(a combination of projections from sites and my own projections). Depending on the contest I choose the model I think will work best.

## DFS Projection Models
1. [Linear Regression Model](https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/Linear%20Regression%20Model%20for%20FP.pdf)
2. [Random Forest Regressor Model](https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/Regression%20Tree%20Model%20-%20Test.pdf)
3. [Ensemble Model]()

## Findings
### Linear Regression
I utilized correlations and trial and error to choose my features for my linear regression model. I ended up finding that the Avg of Last 3 Fantasy Points and the Avg of Last 5 Fantasy Points performed reasonably well in predicting Fantasy Points for upcoming matches.
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/LRHeatmap.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/OLS.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/LR_Predictions.png" width = 700><p>
  
### Random Forest Regressor
For the Random Forest Regressor I utilized the features 'Average of Last 3 games FP','Average of Last 5 games FP','Average of Last 7 games FP','Average FP for season. Utilizing a Random Forest Regressor we do not need to worry about multicollinearity.
We started by removing the data we want to make predictions on, which is player's data from tonight's competition . We cannot include this data in our training and testing or our results would be worthless. So, we take our train/test data and check to see if our model is up to our standards. The bias and variance are acceptable and RMSE also is good enough
Given this we apply this model to the dataset for our upcoming competition. The error results below are for a recent competition.
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/RandomForestTrainTest.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/PredictionsDescribe.png" width = 700><p>
  <p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/PredictionsError.png" width = 700><p>
  
### Ensemble Model
The Ensemble Model I created is an average of my self created predictions, DraftKings predictions, and FantasyFuel predictions. Below is a some summary data and a histogram of the error.
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/3ModelDescribe.png" width = 700><p>
  <p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/3ModelHist.png" width = 700><p>
  
### What is next after this step.
Depending on the competition, I utilize some version of these models. I continually test each model to see how it performs.  


### Contact Me

| Contact Method |  |
| --- | --- |
| Professional Email | djbrown227@gmail.com |
| School Email | djbrown227@gmail.com |
| LinkedIn | https://www.linkedin.com/in/ |
