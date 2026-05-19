-- HackerRank SQL Solution
-- Problem: Contest Leaderboard
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT
a.hacker_id ,
a.name ,
sum(b.score) as score
from Hackers a
JOIN (
    select
    hacker_id,
    challenge_id ,
    max(score) as score
    from Submissions
    group by 1,2
) b
ON a.hacker_id = b.hacker_id
group by 1,2
having sum(b.score)>0
ORDER by 1 asc
--
WITH total_max AS (
    SELECT
        sub.hacker_id,
        SUM(sub.score) AS score
    FROM (
        SELECT
            hacker_id,
            challenge_id,
            MAX(score) AS score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) sub 
    GROUP BY sub.hacker_id
)
SELECT 
    h.hacker_id,
    h.name,
    total_max.score
FROM Hackers h
JOIN total_max ON h.hacker_id = total_max.hacker_id 

WHERE total_max.score > 0 
ORDER BY score DESC, hacker_id ASC;
    