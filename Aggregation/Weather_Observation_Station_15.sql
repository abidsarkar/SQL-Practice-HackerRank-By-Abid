-- HackerRank SQL Solution
-- Problem: Weather Observation Station 15
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
-- Write your solution here
SELECT
round(LONG_W,4)
from station
where LAT_N = (
    select
    max(LAT_N)
    from station
    where LAT_N<137.2345)