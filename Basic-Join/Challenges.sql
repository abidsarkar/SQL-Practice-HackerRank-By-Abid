-- HackerRank SQL Solution
-- Problem: Challenges
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Write your solution here
SELECT
a.hacker_id ,
a.name,
count(distinct(b.challenge_id)) as challenges_created
from Hackers a
JOIN Challenges b
ON a.hacker_id  = b.hacker_id 
group by 1,2)
order by count(b.challenge_id) desc,  a.hacker_id desc