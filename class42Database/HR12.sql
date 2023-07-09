

select e.first_name, e.last_name,e. hire_date
from employees e
join departments d on d.department_id = e.department_id
where e.first_name <> 'Clara'; --wrong answer

SELECT first_name, last_name, hire_date  
FROM employees  
WHERE department_id =  
( SELECT department_id  
FROM employees  
WHERE first_name = 'Clara')  
AND first_name <> 'Clara';

select * from employees;
select * from departments;


select employee_id, first_name, last_name
from employees
where first_name like '%T%';

SELECT employee_id, first_name, last_name  
FROM employees  
WHERE department_id in
( SELECT department_id  
FROM employees  
WHERE first_name LIKE '%T%' );


--select employee_id, first_name, salary
--from employees
--where salary > (select AVG(salary)
--from employees)
--and department_id in (select department_id
--from employees where first_name like 'J%');  i got no result 

SELECT employee_id, first_name, salary
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees)
AND department_id IN (SELECT department_id FROM employees WHERE first_name LIKE 'J%');


SELECT employee_id, first_name , salary  
FROM employees  
WHERE salary > 
(SELECT AVG (salary)  
FROM employees ) 
AND  department_id IN 
( SELECT department_id  
FROM employees  
WHERE first_name LIKE '%J%');


select * from employees;
select * from departments;
select * from locations;

select e.first_name, e.last_name, e.employee_id, e.job_id 
from employees e
where e.department_id =(select d.department_id 
from departments d
where d.location_id =(select l.location_id 
from locations l where city = 'Toronto'));-- does not show city name

select first_name, last_name,employee_id, job_id, city
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id where l.city ='Toronto';


select * from employees;
select * from departments;

select employee_id, first_name, last_name, job_id
from employees
where salary < (select salary 
from employees where job_id='MK_MAN');

select employee_id, first_name, last_name, job_id
from employees
where salary > all(select Avg(salary)
from employees
group by department_id)
;


select department_id, sum(salary) as total_salary
from employees
group by department_id
having department_id is not null;

                          

select employee_id, first_name, last_name,
case job_id
when 'ST_MAN' then 'SALESMAN'
WHEN 'IT_PROG' THEN 'DEVELOPER'
ELSE JOB_ID
END AS JOB_ID
from employees;


SELECT employee_id, first_name, last_name,
       CASE job_id
           WHEN 'ST_MAN' THEN 'SALESMAN'
           WHEN 'IT_PROG' THEN 'DEVELOPER'
           ELSE job_id
       END AS job_title
FROM employees;



