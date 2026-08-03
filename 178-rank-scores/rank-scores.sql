# Write your MySQL query statement below
select score,
DENSE_RANK() OVER (order by Score DESC) as 'rank'
from Scores
order by score desc;