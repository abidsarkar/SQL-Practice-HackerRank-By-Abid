-- HackerRank SQL Solution
-- Problem: Japanese Cities Names
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-- Write your solution here
SELECT name
from city 
where countrycode = 'JPN'
