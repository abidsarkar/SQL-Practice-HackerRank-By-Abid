-- HackerRank SQL Solution
-- Problem: Binary Tree Nodes
-- Category: Advanced-Select
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- Write your solution here
/*
Enter your query here.
*/
select
pp,
case 
    when count(pp)>1 then  'Inner'
    when pp is null then 'Root'
    else 'Leaf'
end as asss
from 
(SELECT
N as pp
from BST
union all 
select 
P as pp
from BST) a
group by pp