-- HackerRank SQL Solution
-- Problem: Interviews
-- Category: Advanced-Join
-- https://www.hackerrank.com/challenges/name-of-employees/problem
-- Write your solution here
/*
Enter your query here.
*/
SELECT 
    a.contest_id,
    a.hacker_id,
    a.name,
    SUM(e.total_submissions) AS total_submissions,
    SUM(e.total_accepted_submissions) AS total_accepted_submissions , 
    SUM(d.total_views) AS total_views,
    SUM(d.total_unique_views) AS total_unique_views
    
    
FROM contests a
JOIN colleges b ON a.contest_id = b.contest_id
JOIN challenges c ON c.college_id = b.college_id
LEFT JOIN (
    select 
    challenge_id,
    sum(total_views) as total_views,
    SUM(total_unique_views) AS total_unique_views
    from view_stats
    group by challenge_id
    having total_views>0
    OR total_unique_views >0
) d ON d.challenge_id = c.challenge_id
LEFT JOIN (
    select 
    challenge_id,
    sum(total_submissions) as total_submissions,
    SUM(total_accepted_submissions) AS total_accepted_submissions
    from submission_stats
    group by challenge_id
    HAVING total_submissions>0
    OR total_accepted_submissions>0
    
) e ON e.challenge_id = c.challenge_id
GROUP BY a.contest_id, a.hacker_id, a.name
ORDER BY a.contest_id ASC;