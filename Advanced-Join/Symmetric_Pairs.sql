-- HackerRank SQL Solution
-- Problem: Symmetric Pairs
-- Category: Advanced-Join
--https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
SELECT 
p1.x,
p1.y
from functions p1
JOIN functions p2
ON p1.x = p2.y and p1.y = p2.x
GROUP BY p1.x,p1.y
HAVING COUNT(*) > 1 OR p1.X < p1.Y
ORDER BY p1.X;
