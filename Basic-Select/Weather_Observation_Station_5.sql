-- HackerRank SQL Solution
-- Problem: Weather Observation Station 5
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
select 
city,
char_length(city) as lenght
from station
ORDER by char_length(city) asc, city asc
limit 1;

select 
city,
char_length(city) as lenght
from station
order by char_length(city) desc, city desc
limit 1;
