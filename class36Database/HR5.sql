select round(144.23,-1)
from dual;

select *from employees natural join jobs;

SELECT
    * FROM jobs;
    
describe jobs;

select first_name,salary,job_title,job_id
from employees natural join jobs --join twp table and then show job_title extra
where salary<10000;


SELECT department_id, department_name,
location_id, city
FROM departments
NATURAL JOIN locations
WHERE department_id IN (20, 50);

select employee_id, last_name, location_id, department_id
from employees join departments
using (department_id);--for call specific matching id...there will be many matching id in a table so we use using there

SELECT l.city, d.department_name,location_id
FROM locations l JOIN departments d USING (location_id)
WHERE location_id = 1400;

select e.employee_id, e.last_name, e.department_id,
       d.department_id, d.location_id
from   employees e join departments d
on     (e.department_id = d.department_id);--e means employees table and d means departments table

--select e.employee_id, e.last_name, e.department_id,
--       d.last_name, d.location_id
--from   employees e join departments d
--on     (e.last_name = d.last_name);  --employees table has last_name but department not

SELECT
    * FROM employees;
    
SELECT
    * FROM departments;

select *from locations;
    
select employee_id, city, department_name, d.department_id,l.location_id,d.location_id
from employees e
join departments d
on d.department_id = e. department_id
join locations l
on d.location_id = l.location_id;

select employee_id, city, department_name, d.department_id,l.location_id,d.location_id
from departments d
join employees e
on d.department_id = e. department_id
join locations l
on d.location_id = l.location_id;

SELECT e.employee_id, e.last_name, e.department_id, 
d.department_id, d.location_id, e.manager_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.manager_id = 149;

select to_char(1680.00,'$99G99D99')
from dual;

select to_char(1680.00,'$9999D99')
from dual;



