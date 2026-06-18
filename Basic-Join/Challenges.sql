-- HackerRank SQL Solution
-- Problem: Challenges
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Write your solution here
WITH ChallengeCounts AS (
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS total_challenges
    FROM 
        Hackers h
    JOIN 
        Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY 
        h.hacker_id, 
        h.name
),
MaxCount AS (
    SELECT MAX(total_challenges) AS max_total FROM ChallengeCounts
),
UniqueCounts AS (
    SELECT total_challenges
    FROM ChallengeCounts
    GROUP BY total_challenges
    HAVING COUNT(*) = 1
)

SELECT 
    cc.hacker_id, 
    cc.name, 
    cc.total_challenges
FROM 
    ChallengeCounts cc
WHERE 
    cc.total_challenges = (SELECT max_total FROM MaxCount) 
    OR cc.total_challenges IN (SELECT total_challenges FROM UniqueCounts) 
ORDER BY 
    cc.total_challenges DESC, 
    cc.hacker_id ASC;