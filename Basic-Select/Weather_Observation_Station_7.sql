-- HackerRank SQL Solution
-- Problem: Weather Observation Station 7
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT
distinct(city)
from station
where city regexp '[aeiou]$'
