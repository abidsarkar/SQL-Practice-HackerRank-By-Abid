-- HackerRank SQL Solution
-- Problem: Weather Observation Station 14
-- Category: Aggregation
--https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Write your solution here
SELECT
round(max(LAT_N),4)
from station
where LAT_N < 137.2345