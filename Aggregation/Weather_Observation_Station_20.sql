-- HackerRank SQL Solution
-- Problem: Weather Observation Station 20
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Write your solution here
SELECT
Round (S.LAT_N,4)
from station S
where (
    select count(LAT_N)
    from station
    where LAT_N<S.LAT_N
) = (
    select count(LAT_N)
    from station
    where LAT_N> S.LAT_N
)