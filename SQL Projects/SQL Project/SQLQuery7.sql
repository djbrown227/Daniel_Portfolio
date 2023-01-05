SELECT *
INTO [NBA].[dbo].[player_season_stats]
FROM [NBA].[dbo].[sportsref_download (16).xls]
UNION
SELECT *
FROM [NBA].[dbo].[sportsref_download (17).xls]
UNION
SELECT *
FROM [NBA].[dbo].[sportsref_download (18)];

--SELECT * 
--FROM [NBA].[dbo].[player_season_stats];