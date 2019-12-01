with t1 as (
  select r.task_id task_id, t.name task_name, avg(r.score) avg
  from tasks t
  right join reports r on r.task_id = t.id
  group by r.task_id, t.name
  order by r.task_id asc
)

select t1.task_id, t1.task_name, 
(case 
    when t1.avg <= 20 then 'Hard'
    when t1.avg > 20 and t1.avg <= 60 then 'Medium'
    when t1.avg > 60 then 'Easy'
end) as difficulty
from t1;