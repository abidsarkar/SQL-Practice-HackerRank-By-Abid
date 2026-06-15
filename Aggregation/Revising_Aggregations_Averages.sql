-- HackerRank SQL Solution
-- Problem: Revising Aggregations Averages
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Write your solution here
SELECT
count(distinct(id)) as total_city
from city
where population >100000
