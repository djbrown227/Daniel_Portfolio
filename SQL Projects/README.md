## Intro
I utiliz Microsoft SQL Server to store data for many of my projects. Microsoft SQL Server enables me to easily organize my data and also allows me to perform simple
Exploratory Data Analysis before importing the data into Python. In the Project Below I utilized Microsoft SQL Server to explore NBA 2022-2023 several different data
sources. The tables had player game by game data and season total data, which enabled me to explore both the big picture and small picture data of the current NBA 
season.

## Project
1. [Microsoft SQL Server - NBA DATA](https://github.com/djbrown227/Daniel_Portfolio/tree/main/SQL%20Projects/SQL%20Project)

## Preview
### Below are some of the nested subqueries I performed in order to extract data from the tables. These queries extract the first and
second best point performance for players.

--Players top PTS performance for the season
SELECT Player, Team, PTS
FROM (
  SELECT Player, Team, PTS,
  RANK() OVER (PARTITION BY Team ORDER BY PTS DESC) as ranking
  FROM [NBA].[dbo].[player_season_stats]
) p
WHERE ranking = 1;

--Players second best performance for the season
SELECT Player, Team, PTS
FROM (
  SELECT Player, Team, PTS,
  RANK() OVER (PARTITION BY Team ORDER BY PTS DESC) as ranking
  FROM [NBA].[dbo].[player_season_stats]
) p
WHERE ranking = 2;

### This query selected players who have scored more away than at home

--Players who scored more total points in away games
SELECT Player, SUM(PTS) as total_points, SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END) as home_points, SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) as away_points
FROM [dbo].[NBA Data 2022]
GROUP BY Player
HAVING SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) > SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END)
ORDER BY total_points DESC;

