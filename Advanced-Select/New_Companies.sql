-- HackerRank SQL Solution
-- Problem: New Companies
-- Category: Advanced-Select
-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
-- Write your solution here
SELECT
a.company_code, 
a.founder ,
count(distinct(b.lead_manager_code)) ,
count(distinct(b.senior_manager_code)),
count(distinct(b.manager_code)),
count(distinct(b.employee_code))
from Company a
LEFT JOIN Employee b
ON a.company_code= b.company_code
GROUP BY 1,2