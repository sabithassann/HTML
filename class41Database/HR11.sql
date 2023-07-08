--answer 1


CREATE SEQUENCE faysal_sq START WITH 101;

CREATE TABLE nahid (
  e_id NUMBER(10) DEFAULT faysal_sq.NEXTVAL PRIMARY KEY,
  e_name VARCHAR2(30),
  e_dob DATE,
  e_hire_date DATE,
  salary NUMBER(8,2)
);



insert into nahid (e_name, e_dob, e_hire_date, salary)
values('santo','02-jan-1997','02-feb-1997',20000);

insert into nahid (e_name, e_dob, e_hire_date, salary)
values('tameem','02-jan-1997','02-feb-1997',20000);

select * from nahid;




CREATE SEQUENCE sabit_seq_sq
START WITH 101
INCREMENT BY 10
MAXVALUE 9999
NOCACHE
NOCYCLE;

select * from sabit;

--truncate table sabit;

--answer 2

insert into sabit 
values(sabit_seq_sq.nextval,'sabit','02-jan-1997','02-feb-1997',20000);

insert into  sabit
values(sabit_seq_sq.nextval,'tameem','03-jan-1997','02-feb-2003',30000);

insert into  sabit
values(sabit_seq_sq.nextval,'santo','04-jan-1997','02-feb-2002',40000);

insert into  sabit
values(sabit_seq_sq.nextval,'saifullah','05-jan-1997','02-feb-2001',50000);

insert into  sabit
values(sabit_seq_sq.nextval,'pranto','06-jan-1997','02-feb-2000',60000);


--answer 3


select *
from sabit
order by e_id DESC
fetch first 1 row only;



--answer 4
select * from sabit
where e_name like '%a%';

--answer 5
select first_name, last_name, salary
from hr.employees
where salary < (select salary
from hr.employees
where employee_id=182);


--answer 6
select * from employees;
select * from departments;

select d.department_name,  Avg(e.salary),count(e.employee_id) as Total_Employees
from hr.employees e
join hr.departments d on e.department_id = d.department_id
where e.commission_pct is not null
group by d.department_name;








