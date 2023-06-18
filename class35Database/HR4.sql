SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP 
FROM DUAL; --show current international timestamp

SELECT sysdate 
from dual;--show current date from your dekstop date

SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees
WHERE department_id = 90;--to calculate weeks use 7

SELECT last_name, ROUND((SYSDATE-hire_date) / 30 , 0) AS MONTH
FROM employees
WHERE department_id = 90;--to calculate month use 30

SELECT last_name, ROUND((SYSDATE - 12/01/97) / 24, 0) AS DAY
FROM employees
WHERE department_id = 90;--to calculate day use 24

SELECT last_name, ROUND((SYSDATE - TO_DATE('12/01/1997', 'MM/DD/YYYY')) / 365) AS YEAR
FROM employees
WHERE department_id = 90;--calculate year from employees where department_id=90;

SELECT ROUND((SYSDATE -  TO_DATE('12/01/1997', 'DD/MM/YYYY'))/365,0) AS Hasan
FROM dual;--to calculate year..for use custom date format use TO_DATE

SELECT NEXT_DAY(SYSDATE,'FRIDAY') 
from dual; --show when it will be next friday

SELECT NEXT_DAY(SYSDATE, 2) AS next_Date
FROM dual;--show next day

SELECT MONTHS_BETWEEN(SYSDATE,'10-jan-97')
FROM dual; --use default correct date format..for custom date format use to_date

SELECT ROUND(MONTHS_BETWEEN(SYSDATE,'10-jan-97')/1,0)
FROM dual;--for round month

SELECT ADD_Months(sysdate,10) 
from dual; -- show after 10 month

SELECT ROUND(SYSDATE,'MONTH')
FROM DUAL;

SELECT ROUND(SYSDATE,'YEAR')
FROM DUAL;

SELECT TRUNC(SYSDATE ,'MONTH')
FROM DUAL;

SELECT TRUNC(SYSDATE ,'YEAR')
FROM DUAL;

SELECT TO_CHAR(date['11-Nov-2000'])
FROM DUAL;

SELECT TO_CHAR(DATE '2000-05-14', 'yyyy-dd-mm') AS formatted_date
FROM DUAL;

SELECT TO_CHAR(DATE '2000-10-05', 'dd-mm-yyyy') AS formatted_date
FROM DUAL;--DATE'yyyy-mm-dd' this format is default you cannot change this format afrer you can customize to any date format

SELECT TO_CHAR(hire_date, 'dd-mm-yyyy') AS FORMATED_DATE
FROM employees;

SELECT TO_CHAR(hire_date, 'dd-mm-yyyy') AS formatted_date
FROM employees;

SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
FROM employees
WHERE hire_date < TO_DATE('01-Jan-07','DD-Mon-RR');--convert date into rr format so rr in dd-mon-rr

SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-MONTH')
FROM employees
WHERE hire_date < TO_DATE('01-Jan-07','DD-Mon-RR');

SELECT last_name, commission_pct,nvl2(commission_pct,commission_pct+2,0)
From employees;

SELECT last_name, commission_pct,
NULLIF(commission_pct,0.4)
FROM employees;--return null if it matches or otherwise show same

SELECT first_name,last_name,
NULLIF (length(first_name), length(last_name)) AS RESULT
FROM employees;--if the length first_name and last_name matchs it gives NULL

SELECT first_name,commission_pct,
COALESCE ((commission_pct,0.4),commission_pct+10) AS RESULT
FROM employees;

SELECT first_name, commission_pct, COALESCE(commission_pct, 0.4, commission_pct + 10) AS result
FROM employees;



SELECT last_name, salary, commission_pct,
COALESCE((salary+(commission_pct*salary)), salary+2000)"New Salary"
FROM employees;

SELECT last_name, job_id, salary,
CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
WHEN 'SA_REP' THEN 1.20*salary
ELSE salary END "REVISED_SALARY_TEST"
FROM employees;--case means start end means ending

select to_char(50)|| last_name
from employees;--to number into character

select to_number('50')
from employees;--to convert string or character to number



SELECT first_name,length(first_name)
FROM employees
WHERE length(first_name) = (SELECT MAX(length(first_name)) FROM employees);


SELECT COUNT(*)
FROM employees
WHERE department_id = 90;

SELECT department_id, job_id, sum(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY job_id;

SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id 
ORDER BY department_id;

SELECT job_id, sum(salary) Payroll
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) > 13000
order by sum(salary);



SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT first_name, salary
FROM employees
WHERE salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  )
);






