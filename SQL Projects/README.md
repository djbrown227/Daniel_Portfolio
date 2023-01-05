## Intro
I utilize Microsoft SQL Server to store data for many of my projects. Microsoft SQL Server enables me to easily organize my data and also allows me to perform simple
Exploratory Data Analysis before importing the data into Python. In the project below I utilized Microsoft SQL Server to explore NBA 2022-2023 from several different data sources. The tables have player game by game data and season total data, which enables me to explore both the big picture and small picture data of the current NBA season.

## Project
1. [Microsoft SQL Server - NBA DATA](https://github.com/djbrown227/Daniel_Portfolio/tree/main/SQL%20Projects/SQL%20Project)

## Preview
### Below are some of the nested subqueries I performed in order to extract data from the tables. These queries extract the first and second best point performance for players.

#### Players top PTS performance for the season<br>
SELECT Player, Team, PTS, <br>
FROM (<br>
  SELECT Player, Team, PTS,<br>
  RANK() OVER (PARTITION BY Team ORDER BY PTS DESC) as ranking<br>
  FROM [NBA].[dbo].[player_season_stats]<br>
) p
WHERE ranking = 1;

#### Players second best performance for the season<br>
SELECT Player, Team, PTS<br>
FROM (<br>
  SELECT Player, Team, PTS,<br>
  RANK() OVER (PARTITION BY Team ORDER BY PTS DESC) as ranking<br>
  FROM [NBA].[dbo].[player_season_stats]<br>
) p<br>
WHERE ranking = 2;

### This query selected players who have scored more away than at home<br>

SELECT Player, SUM(PTS) as total_points, SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END) as home_points, SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) as away_points<br>
FROM [dbo].[NBA Data 2022]<br>
GROUP BY Player<br>
HAVING SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) > SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END)<br>
ORDER BY total_points DESC;

