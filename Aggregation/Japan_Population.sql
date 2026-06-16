-- HackerRank SQL Solution
-- Problem: Japan Population
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Write your solution here
SELECT
sum(population)
from city
where countrycode = 'JPN'