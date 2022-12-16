# NBA DFS Projections

## Introduction
NBA DFS projections are given for each player for their upcoming competitions. The projection is the player's expected DF Points for the next contest. There are many free and paid sites that give their projections for players, some are junk and some are based on very complicated models. I did not want to pay for my projections so I wrote a projection models in Python based on both traditional and advanced statistics gathered from Stathead.com. I then developed a Linear Regression Model, a Random Forest Regressor Model, and an Ensemble Model(a combination of projections from sites and my own projections). Depending on the contest I choose the model I think will work best.

## DFS Projection Models
1. [Linear Regression Model](https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/Linear%20Regression%20Model%20for%20FP.pdf)
2. [Random Forest Regressor Model](https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/Regression%20Tree%20Model%20-%20Test.pdf)
3. [Ensemble Model]()

## Findings
### Linear Regression
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/LRHeatmap.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/OLS.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/LR_Predictions.png" width = 700><p>
  
### Random Forest Regressor
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/PredictionsDescribe.png" width = 700><p>
  <p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/PredictionsError.png" width = 700><p>
    <p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/RandomForestTrainTest.png" width = 700><p>
  
### Ensemble Model
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/3ModelDescribe.png" width = 700><p>
  <p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections/3ModelHist.png" width = 700><p>
  
### What is next after this step.
I will utilize the linear regression model I came up with and sportbook lines for Over/Under in order to estimate how many Fantasy Points will be scored in that game. Higher scoring games will have more Fantasy Points up for grabs, and I can use this in my lineup selection.


### Contact Me

| Contact Method |  |
| --- | --- |
| Professional Email | djbrown227@gmail.com |
| School Email | djbrown227@gmail.com |
| LinkedIn | https://www.linkedin.com/in/ |
