-- HackerRank SQL Solution
-- Problem: The Report
-- Category: Basic-Join
-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Write your solution here
SELECT 
    CASE 
        WHEN g.Grade >= 8 THEN s.Name 
        ELSE NULL 
    END AS Name,
    g.Grade,
    s.Marks
FROM Students s
JOIN Grades g 
  ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY 
    g.Grade DESC,
    s.Name ASC,
    s.Marks ASC;