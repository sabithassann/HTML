create table emp_1273983(
eid int PRIMARY KEY,
ename varchar2(30),
salary number(8,2),
hire_date date,
address VARCHAR2(30)
)

select *FROM emp_1273983;
COMMIT;

insert into emp_1273983 (eid,ename,salary,hire_date,address)
--values (1,'sabit',10000.00,'01-jan-1997','pabna');--,(5,'testvalues',30000,'02-jan-2001','check');
values (&eid,'&ename',&salary,'&hire_date','&address');--you cannot give null to date when you use ampersand in date

update emp_1273983
set
ename ='pranto'
where eid=5;

delete from emp_1273983
where eid=6;

--TRUNCATE table emp_1273983;

