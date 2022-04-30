CREATE DATABASE empdet;

use empdet;

CREATE TABLE emp (
id INTEGER AUTO_INCREMENT UNIQUE,
name VARCHAR(255) NOT NULL,
phno BIGINT UNIQUE,
salary FLOAT NOT NULL CHECK (salary > 2500),
dept VARCHAR(255) ,
age INTEGER DEFAULT 25,
gender ENUM("M","F","TG")
); 

CREATE TABLE employee (
-- unique and not null
EmpCode INT(4) NOT NULL,
EmpFName VARCHAR(40),
EmpLName VARCHAR(40),
JOB VARCHAR(50) NOT NULL ,
-- correct char to int
ManagerCode CHAR(4),
HireDate DATE NOT NULL ,
-- salary datatype add
Salary INT(10) NOT NULL,
Commision INT(10),
DEPTCODE INT(3) NOT NULL
-- email
);
ALTER TABLE employee ADD COLUMN email VARCHAR(50) NOT NULL;
ALTER TABLE employee ADD COLUMN dob DATE AFTER EmpLName;
ALTER TABLE employee ADD COLUMN ManagerFName VARCHAR(40) FIRST;
ALTER TABLE employee DROP COLUMN ManagerFName ;
ALTER TABLE employee DROP COLUMN dob ;
ALTER TABLE employee RENAME COLUMN JOB To designation;
ALTER TABLE employee CHANGE COLUMN EmpCode EmpCode INT(4) UNIQUE NOT NULL;
ALTER TABLE employee CHANGE COLUMN DEPTCODE DEPTCODE INT(3); 

INSERT INTO employee  
VALUES (9369, 'TONY', 'STARK', 'SOFTWARE ENGINEER', 7902, '1980-12-17', 2800,0,20,"abc@gmail.com"),
       (9499, 'TIM', 'ADOLF', 'SALESMAN', 7698, '1981-02-20', 1600, 300,30,"abc@gmail.com"),    
       (9566, 'KIM', 'JARVIS', 'MANAGER', 7839, '1981-04-02', 3570,0,20,"abc@gmail.com"),
       (9654, 'SAM', 'MILES', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30,"abc@gmail.com"),
       (9782, 'KEVIN', 'HILL', 'MANAGER', 7839, '1981-06-09', 2940,0,10,"abc@gmail.com"),
       (9788, 'CONNIE', 'SMITH', 'ANALYST', 7566, '1982-12-09', 3000,0,20,"abc@gmail.com"),
       (9839, 'ALFRED', 'KINSLEY', 'PRESIDENT', 7566, '1981-11-17', 5000,0, 10,"abc@gmail.com"),
       (9844, 'PAUL', 'TIMOTHY', 'SALESMAN', 7698, '1981-09-08', 1500,0,30,"abc@gmail.com"),
       (9876, 'JOHN', 'ASGHAR', 'SOFTWARE ENGINEER', 7788, '1983-01-12',3100,0,20,"abc@gmail.com"),
       (9900, 'ROSE', 'SUMMERS', 'TECHNICAL LEAD', 7698, '1981-12-03', 2950,0, 20,"abc@gmail.com"),
       (9902, 'ANDREW', 'FAULKNER', 'ANAYLYST', 7566, '1981-12-03', 3000,0, 10,"abc@gmail.com"),
       (9934, 'KAREN', 'MATTHEWS', 'SOFTWARE ENGINEER', 7782, '1982-01-23', 3300,0,20,"abc@gmail.com"),
       (9591, 'WENDY', 'SHAWN', 'SALESMAN', 7698, '1981-02-22', 500,0,30,"abc@gmail.com"),
       (9698, 'BELLA', 'SWAN', 'MANAGER', 7839, '1981-05-01', 3420, 0,30,"abc@gmail.com"),
       (9777, 'MADII', 'HIMBURY', 'ANALYST', 7839, '1981-05-01', 2000, 200, NULL,"abc@gmail.com"),
       (9860, 'ATHENA', 'WILSON', 'ANALYST', 7839, '1992-06-21', 7000, 100, 50,"abc@gmail.com"),
       (9861, 'JENNIFER', 'HUETTE', 'ANALYST', 7839, '1996-07-01', 5000, 100, 50,"abc@gmail.com");

SELECT * FROM employee;

select EmpCode,EmpFName,EmpLName from employee;

SELECT * FROM employee WHERE salary>2000;

SELECT EmpFName,EmpLName,DEPTCODE FROM employee WHERE ManagerCode=7566;

SELECT * FROM employee ORDER BY salary;

SELECT * FROM employee ORDER BY salary DESC;

SELECT * FROM employee ORDER BY salary DESC, DEPTCODE ASC;

SELECT * FROM employee WHERE salary >2000 ORDER BY salary DESC, DEPTCODE ASC;

-- count number of employees
    SELECT Count(*) FROM employee;
    -- count average salary
    SELECT AVG(salary) FROM employee;
    -- highest earner data
    SELECT MAX(salary) FROM employee;
    -- min salary
    SELECT MIN(salary) FROM employee;
    -- total salary
    SELECT SUM(salary) FROM employee;

SELECT DEPTCODE ,COUNT(DEPTCODE) FROM employee GROUP BY DEPTCODE;
    
SELECT DEPTCODE, MAX(salary),EmpFName,EmpLName FROM employee GROUP BY DEPTCODE;

SELECT DEPTCODE, MIN(salary),EmpFName,EmpLName FROM employee GROUP BY DEPTCODE HAVING MIN(salary >2000);

SELECT DEPTCODE , MIN(salary) FROM employee GROUP BY DEPTCODE HAVING MIN(Commision)>100;


SELECT designation , sum(salary) as SUM_OF_SALARY  from employee GROUP BY designation;


SELECT count(ManagerCode), designation 
from employee 
GROUP BY designation 
ORDER BY count(ManagerCode) DESC;

SELECT year(HireDate) as year, COUNT(EmpCode)
FROM employee
Group BY year(HireDate);

SELECT designation, AVG(salary) as AVG_SALARY
FROM employee
group by designation 
HAVING AVG(salary)>2000;

SELECT ManagerCode , SUM(salary) as total
FROM employee
GROUP BY ManagerCode
HAVING sum(salary) >2000;

SELECT designation , count(*) as dept_count
FROM employee
WHERE designation != "MANAGER"
GROUP BY designation
HAVING count(*) >2;

SELECT designation , count(*) as emp_count
from employee
GROUP BY designation 
HAVING AVG(salary) >2000; 

