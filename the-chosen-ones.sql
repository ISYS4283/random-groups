-- use the database
USE [isys4283-2017fa]

-- clean up workspace
DROP TABLE IF EXISTS #temp

-- select someone new at random
SELECT TOP 1 *
INTO #temp
FROM users
WHERE id NOT IN (SELECT id FROM the_chosen_ones)
ORDER BY NEWID()

-- insert them into the chosen ones
INSERT INTO the_chosen_ones
SELECT * FROM #temp

-- show them
SELECT * FROM #temp

-- show all the chosen ones
SELECT * FROM the_chosen_ones
