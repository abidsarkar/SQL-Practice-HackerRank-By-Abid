-- HackerRank SQL Solution
-- Problem: Weather Observation Station 6
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT
distinct(city)
from station
where city REGEXP '^[aeiou]';
