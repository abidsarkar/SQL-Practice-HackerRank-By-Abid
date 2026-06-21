-- HackerRank SQL Solution
-- Problem: Weather Observation Station 17
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Write your solution here
SELECT
round(LONG_W,4)
from station
where LAT_N = (
    select
    min(LAT_N)
    from station
    where LAT_N > 38.7780
)