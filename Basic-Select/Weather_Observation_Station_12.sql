-- HackerRank SQL Solution
-- Problem: Weather Observation Station 12
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem
-- Write your solution here
/*
Enter your query here.
*/
SELECT 
DISTINCT (city)
FROM station
WHERE city NOT REGEXP '^[aeiou]'
and city not REGEXP '[aeiou]$';