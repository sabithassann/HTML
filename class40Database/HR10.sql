CREATE SEQUENCE dept_deptid_seq_sq
START WITH 280
INCREMENT BY 10
MAXVALUE 9999
NOCACHE
NOCYCLE;

create table emp_222(
id int primary key,
name varchar2(30),
salary float(8)
);

truncate table emp_222;

insert into emp_222 
values(dept_deptid_seq_sq.nextval,'sabit',20000);

insert into emp_222 
values(dept_deptid_seq_sq.nextval,'tameem',30000);

select * from emp_222;



create table sut_information(
s_id int primary key,
s_name varchar2(30),
s_email varchar2(30),
s_dob date,
s_address varchar2(30)
)

CREATE SEQUENCE stu_information_seq_sq
START WITH 1001
INCREMENT BY 10
MAXVALUE 9999
NOCACHE
NOCYCLE;




insert into sut_information
values(stu_information_seq_sq.nextval,'sabit','sabit@gmail.com','02-jan-1998','pabna');
insert into sut_information
values(stu_information_seq_sq.nextval,'tameem','sabit@gmail.com','02-jan-1998','pabna');

select *from sut_information;







select * from employees;
select * from locations;



CREATE VIEW emp_department_idv2 AS
SELECT e.first_name, e.phone_number, e.salary, l.street_address, l.country_id
FROM employees e
JOIN departments d ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id

WHERE d.department_id = 60;




SELECT
    * FROM emp_department_idv2;
