SELECT TOP(5) *
FROM [NBA].[dbo].[player_season_stats];

--Number of Records
SELECT COUNT(*) AS Total_Records FROM [NBA].[dbo].[player_season_stats]

--Average Total Points for NBA Players
SELECT AVG(PTS) AS Average_Total_Points FROM [NBA].[dbo].[player_season_stats]

--Grouping Total Points Scored by Position
SELECT Pos, SUM(PTS) AS Points_by_Position
FROM [NBA].[dbo].[player_season_stats]
GROUP BY Pos;

--Grouping Total Rebounds by Position with Condition of being over 3000 rebounds
--Only players listed as stricly Forwards or Gaurds had over 8000 rebounds
SELECT Pos, SUM(TRB) AS Total_Rebounds_by_Pos 
FROM [NBA].[dbo].[player_season_stats]
GROUP BY Pos
HAVING SUM(TRB) > 8000;

--Some Players had teams listed as LAL/MIN etc I had to get rid of this
DELETE FROM [NBA].[dbo].[player_season_stats]
WHERE Team IN ('LAL,MIN','DAL,MIN');

--Points Scored by Each Team
SELECT Team, SUM(PTS) AS Total_Points
FROM [NBA].[dbo].[player_season_stats]
GROUP BY Team
ORDER BY Total_Points DESC

--Turnover by each Team
SELECT Team, SUM(TOV) AS Total_TOV
FROM [NBA].[dbo].[player_season_stats]
GROUP BY Team
ORDER BY Total_TOV DESC

--Players who have scored more than Average Player on Dallas Mavericks
SELECT Player, Team, PTS
FROM [NBA].[dbo].[player_season_stats]
WHERE PTS > (
  SELECT AVG(PTS)
  FROM [NBA].[dbo].[player_season_stats]
  WHERE Team = 'DAL'
);

--Players who schored more than the Average League Player
SELECT Player, Team, PTS
FROM [NBA].[dbo].[player_season_stats]
WHERE PTS > (
  SELECT AVG(PTS)
  FROM [NBA].[dbo].[player_season_stats]
)
ORDER BY PTS DESC;

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



