# Write your MySQL query statement below
select today.Id
from Weather today join Weather yesterday
on datediff(today.RecordDate, yesterday.RecordDate)=1
and today.Temperature > yesterday.Temperature
;
