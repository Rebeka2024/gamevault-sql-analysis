USE GameVault;


-- Find highest selling games

SELECT 
title,
units_sold
FROM Games
JOIN Sales
ON Games.game_id = Sales.game_id
ORDER BY units_sold DESC;



-- Calculate total revenue

SELECT 
SUM(revenue) AS Total_Revenue
FROM Sales;



-- Find average player hours

SELECT
AVG(hours_played) AS Average_Playtime
FROM PlayerActivity;



-- Most popular genres

SELECT
genre,
COUNT(*) AS Number_of_Games
FROM Games
GROUP BY genre;



-- Games with more than 100 hours played

SELECT
Players.username,
Games.title,
PlayerActivity.hours_played
FROM PlayerActivity
JOIN Players
ON PlayerActivity.player_id = Players.player_id
JOIN Games
ON PlayerActivity.game_id = Games.game_id
WHERE hours_played > 100;
