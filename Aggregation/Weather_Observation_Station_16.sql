-- HackerRank SQL Solution
-- Problem: Weather Observation Station 16
-- Category: Aggregation
--https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Write your solution here
SELECT
round(min(LAT_N),4)
from station
where LAT_N > 38.7780