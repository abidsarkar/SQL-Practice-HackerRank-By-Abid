-- HackerRank SQL Solution
-- Problem: Placements
-- Category: Advanced-Join
-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT 
a.name
from students a
JOIN friends b
ON b.id = a.id
JOIN packages p1
ON p1.id = a.id
JOIN packages p2
ON p2.id = b.friend_id
where p1.salary < p2.salary
ORDER BY p2.salary
