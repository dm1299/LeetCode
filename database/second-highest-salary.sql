# Write your MySQL query statement below
# 方法一：使用left join
select if(t.cnt=1, null, t2.Salary) as SecondHighestSalary
from (select count(distinct Salary) cnt, max(Salary) highest from Employee) t
left join (select Salary from Employee order by Salary desc limit 2) t2
on t.highest > t2.Salary
;

# 方法二：使用ifnull和limit
select ifnull(
    (select distinct Salary 
     from Employee 
     order by Salary desc
     limit 1, 1), 
    null) as SecondHighestSalary
;
