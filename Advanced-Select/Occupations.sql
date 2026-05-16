-- HackerRank SQL Solution
-- Problem: Occupations
-- Category: Advanced-Select
-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
-- Write your solution here
SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor
FROM (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM Occupations
) AS sub
GROUP BY rn
ORDER BY rn;