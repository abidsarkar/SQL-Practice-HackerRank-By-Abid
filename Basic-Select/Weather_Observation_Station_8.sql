-- HackerRank SQL Solution
-- Problem: Weather Observation Station 8
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiou].*[aeiou]$';
