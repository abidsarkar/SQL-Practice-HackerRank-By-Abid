-- HackerRank SQL Solution
-- Problem: Revising the Select Query I
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Write your solution here

SELECT *
from city
where population >=100000
AND countrycode ='USA'
