-- HackerRank SQL Solution
-- Problem: SQL Project Planning
-- Category: Advanced-Join
-- https://www.hackerrank.com/challenges/sql-projects/problem
-- Write your solution here
/*
Enter your query here.
*/
SELECT MIN(Start_Date), MAX(End_Date)
FROM (
    SELECT Start_Date, End_Date,
           -- This creates a unique ID for each consecutive group
           DATE_SUB(Start_Date, INTERVAL ROW_NUMBER() OVER (ORDER BY Start_Date) DAY) as Project_Group
    FROM Projects
) sub
GROUP BY Project_Group
ORDER BY DATEDIFF(MAX(End_Date), MIN(Start_Date)), MIN(Start_Date);
