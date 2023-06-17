SELECT
   employee_id, last_name, salary, department_id
FROM
   employees
WHERE
   employee_id=&employee_id;
   
SELECT   
   last_name, department_id, salary*12
FROM
   employees
WHERE
   job_id='&job_title';
   
SELECT    
    employee_id, last_name, job_id, &input_column_name
FROM
   employees
WHERE
  &CONDITION
ORDER BY &order_column DESC;

SELECT CONCAT(first_name,concat(' ',last_name)) "Full name"
FROM employees;

SELECT SUBSTR (first_name, -2,5)
FROM employees;

SELECT SUBSTR ('HelloWorld', -2,6)
FROM employees;

SELECT INSTR('HelloWorld', 'l')
FROM dual;

DEFINE name_test=first_name="l" Or first_name='L'
SELECT first_name,INSTR('first_name', 'l' or 'L')
FROM employees;
--WHERE 
--first_name="l" Or first_name='L';

SELECT first_name, INSTR(first_name, 'l') AS position
FROM employees
WHERE INSTR(first_name, 'l') > 0 OR INSTR(first_name, 'L') > 0;

SELECT lpad(first_name,12,'-*')
from employees;

select * from jobs
where job_id = '&job'; --use '' for pass string

SELECT *
FROM jobs
WHERE job_id = '&job';

SELECT CONCAT(last_name, '''s job category is '), job_id) "job"
FROM employees
WHERE SUBSTR (job id, 4) = 'REP';

SELECT CONCAT(last_name, '''s job category is '), job_id AS "job"
FROM employees
WHERE SUBSTR(job_id, 3) = '_REP';

         

--SELECT last_name || '''s job category is ' || job_id AS "job"
--FROM employees
--WHERE SUBSTR(job_id, 4) = 'REP';




select * from jobs;

SELECT ROUND(759, -2)
FROM DUAL;

SELECT ROUND(749, -3)
FROM DUAL;

SELECT MOD (1600, 300)
FROM DUAL;--this show modulas

SELECT TRUNC(45.923,2), TRUNC(45.923),
TRUNC(45.923,-1)
FROM DUAL;







