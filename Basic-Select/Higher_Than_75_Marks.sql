-- HackerRank SQL Solution
-- Problem: Higher Than 75 Marks
-- Category: Basic-Select
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- Write your solution here
/*
Enter your query here.
*/
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3) ASC, id ASC;