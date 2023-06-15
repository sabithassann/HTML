SELECT FIRST_NAME, SALARY, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
ORDER BY "ANNUAL SALARY";

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
ORDER BY "ANNUAL SALARY" DESC;

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
ORDER BY "ANNUAL SALARY" DESC;

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
ORDER BY 4 DESC;

SELECT EMPLOYEE_ID, FIRST_NAME
FROM EMPLOYEES
ORDER BY SALARY;

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
ORDER BY 3,4;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
FETCH FIRST  5 ROWS ONLY;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
OFFSET FIRST 5 ROWS NEXT 5 Rows Only;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
OFFSET 5 ROWS FETCH NEXT 5 ROWS  ONLY;--OFFSET MEANS ROMOVE FETCH MEANS SHOW

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
OFFSET 7 ROWS FETCH NEXT 10 PERCENT ROWS ONLY;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
FETCH FIRST 2 ROWS ONLY;--ONLY SHOW FIRST 2 ROWS WITH SAME SALARY IF MATCHS DOES NOT SHOW

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
ORDER BY Salary DESC
FETCH FIRST 2 ROWS WITH TIES; --FOR SHOWING FIRST 2 ROWS WITH SAME SALARY IT CAN BE MULTIPLE ROWS DEPENDING ON MATCHING

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
WHERE Salary=&Salary
ORDER BY Salary DESC;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
WHERE Employee_Id=&Employee_Id
ORDER BY Salary DESC;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
WHERE Salary<=&&Salary and Commission_Pct =&Value
ORDER BY Salary DESC;

SELECT Employee_Id, First_Name, Salary, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
WHERE Salary <= &&Salary AND Commission_Pct = &Value
ORDER BY Salary DESC;--error 3-33 clear && double ampersand

SELECT Employee_Id, &Column_1,&Column_2, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees;

SELECT Employee_Id, &Column_1,&Column_2, Hire_Date, Salary*12 AS "Annual Salary"
FROM Employees
WHERE &Condition; --&Column_1 & Column_2 is just what you want to show

DEFINE Employee_num = 200
SELECT Employee_Id, Last_Name, Salary, Department_ID
FROM Employees
WHERE Employee_ID = &Employee_Num;

UNDEFINE Employee_Num = 200;
SELECT Employee_Id, Last_Name, Salary, Department_ID
FROM Employees
WHERE Employee_ID = &Employee_Num;--DEFINE For declare variable and UNDEFINE for Remove variable

SET VERIFY ON
SELECT Employee_Id, Last_Name, Salary, Department_ID
FROM Employees
WHERE Employee_ID = &Employee_Num; --IT Will verify and show script output messeges

SELECT
   DEPARTMENT_NAME, LOCATION_ID
FROM DEPARTMENTS;



SELECT 
LAST_NAME ||' ' || FIRST_NAME AS full_name,SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
WHERE SALARY_RESULT >100000;


SELECT full_name, annual_salary
FROM (
  SELECT LAST_NAME || ' ' || FIRST_NAME AS full_name, SALARY*12 AS annual_salary
  FROM EMPLOYEES
) AS sub
WHERE annual_salary > 100000; --cause error for add as before sub



SELECT full_name, annual_salary
FROM (
  SELECT LAST_NAME || ' ' || FIRST_NAME AS full_name, SALARY*12 AS annual_salary
  FROM EMPLOYEES
) sub
WHERE annual_salary > 100000;



SELECT 'My full name is ' || First_name || ' ' || Last_name AS full_name, SALARY*12 AS "ANNUAL SALARY"
FROM EMPLOYEES
WHERE SALARY*12 > 100000;--||for merege collums 















