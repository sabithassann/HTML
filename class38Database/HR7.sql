select 'dear customer' || first_name  || ',' from employees;



SELECT last_name, COALESCE(to_char(commission_pct), 'No Commission') AS commission_amount
FROM employees;

SELECT last_name, NVL(TO_CHAR(commission_pct), 'No Commission') AS commission_amount
FROM employees;



SELECT *,
       CASE job_id
           WHEN 'JOB_ID_1' THEN 'Grade A'
           WHEN 'JOB_ID_2' THEN 'Grade B'
           WHEN 'JOB_ID_3' THEN 'Grade C'
           ELSE 'No Grade Assigned'
       END AS grade
FROM employees;

SELECT e.job_id
       (CASE
           WHEN e.job_id = 'JOB_ID_1' THEN 'Grade A'
           WHEN e.job_id = 'JOB_ID_2' THEN 'Grade B'
           WHEN e.job_id = 'JOB_ID_3' THEN 'Grade C'
           ELSE 'No Grade Assigned'
       END) AS grade
FROM employees e;

SELECT e.job_id,
       CASE
           WHEN e.job_id = 'AD_PRES' THEN 'A'
           WHEN e.job_id = 'ST_MAN' THEN 'B'
           WHEN e.job_id = 'IT_PROG' THEN 'C'
           WHEN e.job_id = 'SA_REP' THEN 'D'
           WHEN e.job_id = 'ST_CLERK' THEN 'E'
           
           ELSE '0'
       END AS grade
FROM employees e;

SELECT job_id,
       CASE
           WHEN job_id = 'AD_PRES' THEN 'A'
           WHEN job_id = 'ST_MAN' THEN 'B'
           WHEN job_id = 'IT_PROG' THEN 'C'
           WHEN job_id = 'SA_REP' THEN 'D'
           WHEN job_id = 'ST_CLERK' THEN 'E'
           
           ELSE '0'
       END AS grade
FROM employees;


SELECT job_id,
       CASE job_id
           WHEN  'AD_PRES' THEN 'A'
           WHEN  'ST_MAN' THEN 'B'
           WHEN  'IT_PROG' THEN 'C'
           WHEN  'SA_REP' THEN 'D'
           WHEN 'ST_CLERK' THEN 'E'
           
           ELSE '0'
       END AS grade
FROM employees;

select job_id,
decode(job_id,'AD_PRES','A','ST_MAN','B','IT_PROG','C','SA_REP','D','ST_CLERK','E','0') AS GRADE
FROM EMPLOYEES;

select * from employees;