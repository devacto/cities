with recursive t1 as (
  select id, name, salary, boss_id, salary ind_salary, boss_id ind_id, 1 as level
  from employees
  union all
    select t1.id, t1.name, t1.salary, e.boss_id, e.salary, t1.boss_id, t1.level + 1
    from employees e, t1 
    where t1.boss_id = e.id
),
t2 as (select * from t1 where ind_salary >= 2 * salary),
t3 as (select t2.*, row_number() over (partition by id order by level) rn from t2),
t4 as (select * from t3 where rn = 1)
select e.id employee_id, t4.ind_id boss_id from employees e
left join t4 on (e.id = t4.id) order by employee_id asc;