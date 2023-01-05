--Creates Table that is a left join of season totals and game by game totals

--SELECT st.Player,g.TRB,g.PTS,g.AST
--INTO #PTS_REB_AST_TAB
--FROM [dbo].[player_season_stats] AS st
--LEFT JOIN [dbo].[NBA Data 2022] AS g
--ON st.Player = g.Player

--Take a look at the data
SELECT *
FROM #PTS_REB_AST_TAB
ORDER BY PTS DESC;

--Tells us whether a Player recorded a triple double this season
SELECT Player,
CASE
  WHEN PTS >= 10 AND TRB >= 10 AND AST >= 10 THEN 'Yes'
  ELSE 'No'
END as triple_double
FROM #PTS_REB_AST_TAB;

--Tell us whether a Player recorded a trible double this season
SELECT Player,
CASE
  WHEN PTS >= 10 AND TRB >= 10 THEN 'Yes'
  WHEN PTS >= 10 AND AST >= 10 THEN 'Yes'
  WHEN TRB >= 10 AND AST >= 10 THEN 'Yes'
  ELSE 'No'
END as double_double
FROM #PTS_REB_AST_TAB;