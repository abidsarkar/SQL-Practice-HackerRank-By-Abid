-- HackerRank SQL Solution
-- Problem: Top Earners
-- Category: Aggregation
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Write your solution here
SELECT (months * salary) AS total_earnings, COUNT(*)
FROM Employee
GROUP BY total_earnings
ORDER BY total_earnings DESC
LIMIT 1;