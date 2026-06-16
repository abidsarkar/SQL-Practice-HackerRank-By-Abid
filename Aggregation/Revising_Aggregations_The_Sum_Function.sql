-- HackerRank SQL Solution
-- Problem: Revising Aggregations The Sum Function
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
-- Write your solution here
SELECT
sum(population)
from city
where district = 'California'