# Write your MySQL query statement below
select c.Name as Customers
from Customers c left join Orders o
on c.Id = o.CustomerId
where isnull(o.CustomerId)
;
