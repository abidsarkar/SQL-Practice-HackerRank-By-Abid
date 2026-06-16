-- HackerRank SQL Solution
-- Problem: Population Density Difference
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
-- Write your solution here
SELECT
MAX(population) - min(population) as difference
from city