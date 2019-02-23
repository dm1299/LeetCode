# Write your MySQL query statement below
# 方法一：使用max函数
select max(Salary) as SecondHighestSalary 
from Employee
where Salary < (select max(Salary) from Employee)
;

# 方法二：使用ifnull函数和limit
select ifnull(
    (select distinct Salary 
     from Employee 
     order by Salary desc
     limit 1 offset 1), 
    null) as SecondHighestSalary
;
