# NBA DFS Exploratory Data Analysis

## Introduction
In the Exploratory Data Analysis(EDA) of the NBA Data I explore player and team DFS data through univariate, bivariate and multivariate analysis. This data was aquired through Stathead.com. My intended goal is to get a feel for the data through visualizations and analysis. The end goal for EDA is to select features that affect DFS points for each player. 

## DFS Player Analysis

### Process
After importing data from Stathead.com, I calculated DFS points for each player for each game of the season. I used univariate, bivariate and multivariate analysis tools to achieve this. My intended goal is to get a feel for the data and find features in the standard box score data that may have predictive power for DFS points for future games. I included my EDA for players in the [Player Projections](https://github.com/djbrown227/Daniel_Portfolio/tree/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Player%20Projections)
### Findings

## DFS Team Analysis

### Process
Process: After importing data found from Stathead.com, I calculated DFS points per game for each team so far this season. I used univariate, bivariate and multivariate analysis tools to achieve this. My intended goal is to get a feel for the data and find features in the team standard stats data that may have predictive power for DFS points for future games.

### Findings
Utilizing the pairplot and heatmap functions via the seaborn library I looked at some the correlations between the variables I thought would have great effects on Fantasy Points per game. Both points and assists were found to be strongly correlated(>0.7) and offensive rebounds and pace at 0.59 and 0.55 correlation.
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Exploratory%20Data%20Analysis/Pairplot.png" width = 700><p>
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Exploratory%20Data%20Analysis/Heatmap.png" width = 700><p>

I then performed feature selection and observed what the R squared and RMSE would be if I eliminated features with less than 0.1, then 0.2 and so on correlations with my target variable Fantasy Points Per Game. I found that keeping PPG and ASTPG gave the best R squared and RMSE.

I ran a linear regression analysis on both of these with FPPG as the target, and then on just PPG and FPPG. I decided to simplify the model, and get rid of the issue of multicollinearity, to just use PPG to predict FPPG. One of the benefits of doing this is now I can utilize the Over/Under lines for sportsbooks to predict how many FPPG will be scored in that game, and if I want to pick players in that competition. 
<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Exploratory%20Data%20Analysis/Linear%20Regression.png" width = 700><p>

### What is next after this step.
I will utilize the linear regression model I came up with and sportbook lines for Over/Under in order to estimate how many Fantasy Points will be scored in that game. Higher scoring games will have more Fantasy Points up for grabs, and I can use this in my lineup selection.


### Contact Me

| Contact Method |  |
| --- | --- |
| Professional Email | djbrown227@gmail.com |
| School Email | djbrown227@gmail.com |
| LinkedIn | https://www.linkedin.com/in/ |

