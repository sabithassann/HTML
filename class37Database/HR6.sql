SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);

select e.last_name, e.department_id, d.department_name,d.department_id
from employees e left outer join departments d
on (e.department_id = d.department_id);

select e.last_name, e.department_id, d.department_name,d.department_id
from employees e right outer join departments d
on (e.department_id = d.department_id);

select e.last_name, e.department_id, d.department_name,d.department_id
from employees e full outer join departments d
on (e.department_id = d.department_id);

SELECT last_name, hire_date
FROM employees 
WHERE  hire_date > (SELECT hire_date 
FROM employees
WHERE last_name = 'Davies')
order by hire_date FETCH FIRST 1 ROW ONLY;



SELECT last_name, job_id, salary
FROM employees
WHERE job_id = (SELECT job_id
                FROM employees
                WHERE last_name = 'Taylor')
  AND salary > (SELECT salary
                FROM employees
                WHERE last_name = 'Taylor');--give error because there is more than one taylor;
                
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 
(SELECT job_id
FROM employees
WHERE last_name = 'Davies')
AND salary >
(SELECT salary
FROM employees
WHERE last_name = 'Davies');--it will run because there is only one davies in last_name;

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY
(SELECT salary
FROM employees
WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

select first_name, department_id, salary
from employees
where (salary, department_id) in
(select min(salary), department_id
from employees
group by department_id)
order by department_id;

select min(salary), department_id
from employees
group by department_id
order by department_id;

select department_id
from employees;

select employee_id,first_name,last_name,email,phone_number,salary,manager_id
from employees
where salary=3000 and manager_id=121;

select employee_id, first_name,last_name,email
from employees
where employee_id in (select employee_id
from employees where employee_id in (134,159,183));

SELECT employee_id, first_name, last_name, email
FROM employees
WHERE employee_id IN (SELECT employee_id
                      FROM employees
                      WHERE employee_id IN (134, 159, 183));
                      
select *
from employees
where salary BETWEEN 1000 AND 3000;

select *
from employees
where salary <=2500;

select *
from employees
where manager_id not between 100 and 200;

SELECT *
FROM employees
WHERE manager_id not BETWEEN 100 AND 200
AND department_id  IN (SELECT department_id FROM departments);

SELECT *
FROM employees
WHERE salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    
    
  )
);-- the result of subquary is 17000 less than the first so it will compare with the salary then show the output 2;


SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    
    
  )

 


SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  );
  
  
  
  SELECT MAX(salary)
FROM employees
WHERE salary < (
  SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    
    WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  )
  ))
);


select first_name,last_name,hire_date
from employees
where  not first_name='Clara' and department_id=80;





SELECT first_name, last_name, hire_date
FROM employees
WHERE department_id = (
select department_id
from employees
where first_name='Clara')

AND Not first_name='Clara';
AND  first_name!='Clara';

and first_name<> 'clara';


select employee_id, first_name, last_name
where first_name=(SELECT first_name
FROM employees
WHERE first_name LIKE '%t%');


SELECT employee_id, first_name, last_name
FROM employees
WHERE department_id IN (
  SELECT department_id
  FROM employees
  WHERE first_name LIKE '%T%'
);







