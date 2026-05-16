-- HackerRank SQL Solution
-- Problem: The PADS
-- Category: Advanced-Select
-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT
concat(name,'(' ,left(occupation,1),')')
from OCCUPATIONS 
ORDER BY name asc;

SELECT
concat('There are a total of ',occupation_count,' ', lower(occupation),'s.')
from 
(SELECT
occupation,
count(occupation) as occupation_count
from OCCUPATIONS
group by 1) a
ORDER BY occupation_count asc , occupation asc;
