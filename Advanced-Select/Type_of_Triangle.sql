-- HackerRank SQL Solution
-- Problem: Type of Triangle
-- Category: Advanced-Select
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Write your solution here
SELECT
case
    when ((a+b)<=c or (a+c)<= b OR (b+c)<=a) then 'Not A Triangle'
    when ((a = b) and (b=c))then 'Equilateral'
    when ((a=b) OR (a=c) OR (b=c)) then 'Isosceles'
    when ((a<>b) AND (b<>c)) then 'Scalene'
    
end 
from triangles 