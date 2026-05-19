-- HackerRank SQL Solution
-- Problem: Population Census
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Write your solution here
SELECT
sum(total)
from 
(SELECT
a.countrycode,
sum(a.population) as total ,
'1' as  temp_column
from city a
JOIN country b
ON a.countrycode = b.code
where b.CONTINENT = 'Asia'
GROUP BY 1) aa
group by temp_column
