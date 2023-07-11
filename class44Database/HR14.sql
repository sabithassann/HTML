SELECT department_name, city
FROM departments
NATURAL JOIN (SELECT l.location_id, l.city, l.country_id
FROM locations l
JOIN countries c
ON(l.country_id = c.country_id)
JOIN regions
USING(region_id)
WHERE region_name = 'Europe');


select * from departments;
select *from regions;
select * from locations;
select *from countries
where region_id=1;

--7-6
INSERT INTO (SELECT l.location_id, l.city, l.country_id
FROM locations l
JOIN countries c
on (l.country_id = c.country_id)
JOIN regions USING(region_id)
WHERE region_name = 'Europe')
VALUES (3300, 'Cardiff', 'UK');


SELECT * FROM (
  SELECT l.location_id, l.city, l.country_id
  FROM locations l
  JOIN countries c
  on (l.country_id = c.country_id)
  JOIN regions USING(region_id)
  WHERE region_name = 'Europe'
)
WHERE location_id = 3300;



SELECT department_name, city
FROM departments
NATURAL JOIN (
  SELECT l.location_id, l.city, l.country_id
  FROM locations l
  JOIN countries c
  ON(l.country_id = c.country_id)
  JOIN regions
  USING(region_id)
  WHERE region_name = 'Europe'
);


GRANT create session, create table,
create sequence, create view create sequence, create view
 TO jee;