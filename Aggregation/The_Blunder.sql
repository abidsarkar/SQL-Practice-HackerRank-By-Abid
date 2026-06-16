-- HackerRank SQL Solution
-- Problem: The Blunder
-- Category: Aggregation
--https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Write your solution here
SELECT
ceil(avg(salary) - avg(replace(salary,'0','')))
from EMPLOYEES 