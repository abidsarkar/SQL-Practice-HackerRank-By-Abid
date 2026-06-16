-- HackerRank SQL Solution
-- Problem: Revising Aggregations Averages
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Write your solution here
SELECT
AVG(population)
from city
where district = 'California'