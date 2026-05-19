-- HackerRank SQL Solution
-- Problem: African Cities
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Write your solution here
SELECT
distinct(a.name)
from city a
JOIN country b
ON a.countrycode = b.code
where b.continent ='Africa'