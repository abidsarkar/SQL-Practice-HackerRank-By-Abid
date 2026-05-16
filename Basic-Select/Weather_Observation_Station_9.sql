-- HackerRank SQL Solution
-- Problem: Weather Observation Station 9
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP '^[aeiou]';
