-- HackerRank SQL Solution
-- Problem: Weather Observation Station 18
-- Category: Aggregation
--https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Write your solution here
SELECT 
ROUND(MAX(LAT_N) - MIN(LAT_N) + MAX(LONG_W) - MIN(LONG_W), 4) 
FROM STATION;