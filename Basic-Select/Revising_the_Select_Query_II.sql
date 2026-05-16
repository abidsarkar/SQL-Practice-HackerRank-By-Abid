-- HackerRank SQL Solution
-- Problem: Revising the Select Query II
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-- Write your solution here
SELECT
name
from city
where population >=120000
and countrycode = 'USA'
