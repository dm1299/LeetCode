# Write your MySQL query statement below
# 方法一：使用left join
select t1.Score, t2.rank
from (select Score from Scores order by Score desc) t1
left join (
    select Score, convert(@row:=@row+1, decimal) rank
    from (select distinct Score from Scores) Scores, (select @row:=0) r
    order by Score desc
) t2
on t1.Score=t2.Score
;

# 方法二：使用子查询
select Score, 
(select count(distinct Score) from Scores where Score >= s.Score) Rank
from Scores s
order by Score desc
;
