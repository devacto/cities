create table tasks (
  id integer not null,
  name varchar(40) not null,
  unique(id)
);

create table reports (
  id integer not null,
  task_id integer not null,
  candidate varchar(40) not null,
  score integer not null,
  unique(id)
);

insert into tasks (id, name) values (101, 'MinDist');
insert into tasks (id, name) values (123, 'Equi');
insert into tasks (id, name) values (142, 'Median');
insert into tasks (id, name) values (300, 'Tricoloring');

insert into reports (id, task_id, candidate, score) values (13, 101, 'John Smith', 100);
insert into reports (id, task_id, candidate, score) values (24, 123, 'Delaney Lloyd', 34);
insert into reports (id, task_id, candidate, score) values (37, 300, 'Monroe Jimenez', 50);
insert into reports (id, task_id, candidate, score) values (49, 101, 'Stanley Price', 45);
insert into reports (id, task_id, candidate, score) values (51, 142, 'Tanner Sears', 37);
insert into reports (id, task_id, candidate, score) values (68, 142, 'Lara Fraser', 3);
insert into reports (id, task_id, candidate, score) values (83, 300, 'Tanner Sears', 0);