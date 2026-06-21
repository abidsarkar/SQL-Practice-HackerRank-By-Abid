-- HackerRank SQL Solution
-- Problem: Weather Observation Station 13
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Write your solution here
SELECT
round(sum(LAT_N),4)
from station
where LAT_N between 38.7880 and 137.2345