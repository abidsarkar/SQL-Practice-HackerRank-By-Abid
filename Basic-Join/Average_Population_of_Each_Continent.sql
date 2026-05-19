-- HackerRank SQL Solution
-- Problem: Average Population of Each Continent
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Write your solution here
SELECT
b.Continent,
FLOOR(avg(a.population))
from city a
JOIN country b
ON a.countrycode = b.code
group by b.Continent