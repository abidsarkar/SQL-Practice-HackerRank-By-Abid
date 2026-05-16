-- HackerRank SQL Solution
-- Problem: Weather Observation Station 4
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT
(count(city)-count(distinct(city))) as unique_city
from station
