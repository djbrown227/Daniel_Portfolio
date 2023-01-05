--NBA DATA 2022 is game by game data for the NBA 2022-2023 season downloaded from Stathead
--Some Data Exploration
--Min Number of Points Score
SELECT MIN(PTS) AS Min_Points_Scored FROM [dbo].[NBA Data 2022]
--Max Number of points scored
SELECT MAX(PTS) AS Max_Points_Scored FROM [dbo].[NBA Data 2022]
--Average Number of Points Score
SELECT AVG(PTS) AS League_Average_Points FROM [dbo].[NBA Data 2022]
--Total Number of Records
SELECT COUNT(*) AS Number_of_Records FROM [dbo].[NBA Data 2022]

--Maximum Number of Points Scored this Season
SELECT Player, MAX(PTS) as max_points_per_game
FROM [dbo].[NBA Data 2022]
GROUP BY Player
ORDER BY max_points_per_game DESC;

--Second Highest Scoring Games by Each Player
SELECT Player, Team, PTS
FROM (
  SELECT Player, Team, PTS,
  RANK() OVER (PARTITION BY Player ORDER BY PTS DESC) as ranking
  FROM [dbo].[NBA Data 2022]
) p
WHERE ranking = 2
ORDER BY PTS DESC;

--Player Average Points Scored at Away Games
SELECT Player, AVG(PTS) as avg_points_away
FROM [dbo].[NBA Data 2022]
WHERE [Unnamed: 7] = '@'
GROUP BY Player
ORDER BY avg_points_away DESC;

--Home games were listed as NULL, change this to Home
UPDATE [dbo].[NBA Data 2022]
SET [Unnamed: 7] = COALESCE([Unnamed: 7], 'Home')
WHERE [Unnamed: 7] IS NULL;

--Player Average Points Scored at Home Games
SELECT Player, AVG(PTS) as avg_points_home
FROM [dbo].[NBA Data 2022]
WHERE [Unnamed: 7] = 'Home'
GROUP BY Player
ORDER BY avg_points_home DESC;

--Player Average Points Scored against the Dallas Mavericks
SELECT Player, AVG(PTS) as avg_points
FROM [dbo].[NBA Data 2022]
WHERE Opp = 'DAL'
GROUP BY Player
ORDER BY avg_points DESC;

--Players who scored more total points in away games
SELECT Player, SUM(PTS) as total_points, SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END) as home_points, SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) as away_points
FROM [dbo].[NBA Data 2022]
GROUP BY Player
HAVING SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) > SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END)
ORDER BY total_points DESC;

--Players who scored more total points in home games
SELECT Player, SUM(PTS) as total_points, SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END) as home_points, SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) as away_points
FROM [dbo].[NBA Data 2022]
GROUP BY Player
HAVING SUM(CASE WHEN [Unnamed: 7] = '@' THEN PTS ELSE 0 END) < SUM(CASE WHEN [Unnamed: 7] = 'Home' THEN PTS ELSE 0 END)
ORDER BY total_points DESC;