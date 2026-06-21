-- HackerRank SQL Solution
-- Problem: Weather Observation Station 2
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Write your solution here
SELECT
round(sum(LAT_N),2) as lat  ,
round(sum(LONG_W),2) as lon 
from station