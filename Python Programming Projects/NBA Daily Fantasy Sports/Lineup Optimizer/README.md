# NBA DFS Lineup Optimizer

## Introduction
After calculating each player's projection for the upcoming competition, the next step is choosing a lineup.Participants in the competition have to choose 8 players 
from the teams competing that night. They must choose 1 Point Gaurd, 1 Shooting Gaurd, 1 Small Forward, 1 Power Forward, 1 Center, 1 Gaurd(Point Gaurd/Shooting Gaurd), 
1 Forward(Small Forward/Power Forward), and 1 Utility Player (this can come from any position). DraftKings assigns a Salary for each player. 

The goal is to maximize DFS points while keeping the lineup salary under $50,000. This optimizer I use is designed for 
DFS competitions on several platforms. It enables an array of customizations depending on the competition the status of players.

### Lineup Optimizer
After calculating my projections and placing them into the necessary format for the optimizer to function, I apply certain strategies and rules in order to get the 
results I desire. Given my projections I want the optimal lineup, which is the maximum number of fantasy points given the salary. However, my projections are not perfect
and there is built in bias and variance. Given this I want to diversify my lineups to an extent. I do this by limiting the number of lineups that can be repeated. I also
limit the exposure(what % of lineups can they be in) of players who have an injury status of questionable.
#### Choosing Lineups
1. Get optimal lineup according to projections
2. Vary lineups in order to minimize risk
3. Limit exposure of players(how many lineups they can be on) who are questionable for the night's game

<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/Python%20Programming%20Projects/NBA%20Daily%20Fantasy%20Sports/Lineup%20Optimizer/LineupsGenerated.png" width = 700><p>

### What is next after this step.
I always backtest my models to see how accurate they are. This requires downloading what players have done in competitions and seeing how it compares to my predictions. 

### Contact Me

| Contact Method |  |
| --- | --- |
| Professional Email | djbrown227@gmail.com |
| School Email | djbrown227@gmail.com |
| LinkedIn | https://www.linkedin.com/in/ |
