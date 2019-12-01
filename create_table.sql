drop table employees;

create table employees (id integer not null, name varchar(30) not null, 
salary integer not null, boss_id integer, unique(id));

insert into employees (id, name, salary, boss_id) values (10, 'John', 4500, 20);
insert into employees (id, name, salary, boss_id) values (40, 'Kennat', 1500, 50);
insert into employees (id, name, salary, boss_id) values (50, 'Harry', 3000, 10);
insert into employees (id, name, salary, boss_id) values (20, 'Ken', 10000, null);
insert into employees (id, name, salary, boss_id) values (70, 'Jack', 1500, 10);
insert into employees (id, name, salary, boss_id) values (60, 'Oliver', 2000, 70);
insert into employees (id, name, salary, boss_id) values (30, 'Lokos', 1501, 50);