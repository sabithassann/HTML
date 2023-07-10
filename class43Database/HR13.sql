
--s1.

SELECT d.department_name, AVG(e.salary), COUNT(e.employee_id) AS "No of employees"
FROM hr.departments d
JOIN hr.employees e ON d.department_id = e.department_id
WHERE d.department_name IN (
    SELECT d.department_name
    FROM hr.departments d
)
AND e.commission_pct IS NOT NULL
GROUP BY d.department_name;



--s2

SELECT d.department_name, 
       (SELECT AVG(e.salary) 
        FROM hr.employees e 
        WHERE e.department_id = d.department_id 
          AND e.commission_pct IS NOT NULL) AS avg_salary,
       (SELECT COUNT(e.employee_id) 
        FROM hr.employees e 
        WHERE e.department_id = d.department_id 
          AND e.commission_pct IS NOT NULL) AS "No of employees"
          
--        
FROM hr.departments d


WHERE d.department_id in (SELECT department_id
                                        FROM hr.employees
                                            WHERE commission_pct is not null);
                                            
                                            
SELECT d.department_name, 
       (SELECT AVG(e.salary) 
        FROM hr.employees e 
        WHERE e.department_id = d.department_id 
          AND e.commission_pct IS NOT NULL) AS avg_salary,
       (SELECT COUNT(e.employee_id) 
        FROM hr.employees e 
        WHERE e.department_id = d.department_id 
          AND e.commission_pct IS NOT NULL) AS "No of employees"
FROM hr.departments d
WHERE d.department_id IN (
    SELECT department_id
    FROM hr.employees
    WHERE commission_pct IS NOT NULL
);



--s3

SELECT d.department_name, AVG(e.salary) AS avg_salary, COUNT(e.employee_id) AS "No of employees"
FROM hr.departments d, hr.employees e
WHERE d.department_id = e.department_id
  AND e.commission_pct IS NOT NULL
GROUP BY d.department_name;


--s4

SELECT d.department_name, AVG(e.salary), COUNT(e.employee_id) AS "No of employees"
FROM hr.departments d
JOIN hr.employees e ON d.department_id = e.department_id
WHERE d.department_id IN (
    SELECT department_id
    FROM hr.departments
)
AND e.commission_pct IS NOT NULL
GROUP BY d.department_name;

--s5

SELECT d.department_name, AVG(e.salary), COUNT(e.employee_id) AS "No of employees"
FROM hr.departments d
JOIN hr.employees e ON d.department_id = e.department_id
where d.department_id in (
    SELECT department_id
    FROM hr.employees
    where commission_pct IS NOT NULL
)
GROUP BY d.department_name;


SELECT d.department_name, AVG(e.salary), COUNT(e.employee_id) AS "No of employees"
FROM hr.departments d
JOIN hr.employees e ON d.department_id = e.department_id
WHERE d.department_id in (
    SELECT department_id
    FROM hr.employees
    WHERE commission_pct IS NOT NULL
)
GROUP BY d.department_name;

select * from employees;
select * from departments;

select department_name, avg(salary), count(*)
from employees





