-- HackerRank SQL Solution
-- Problem: Draw The Triangle 1
-- Category: Alternative-Queries
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Write your solution here
SET @NUMBER := 21;

SELECT REPEAT('* ', @NUMBER := @NUMBER - 1) 
FROM information_schema.tables 
LIMIT 20;