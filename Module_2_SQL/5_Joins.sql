-- JOINS
-- are tools that are used to access data from 
--two or more tables with the help of a common attribute
-- 1 - access data of both the tables

-- 4 types of joins
-- i)   Common data (intersection) -> INNER JOIN
-- ii)  Left Table DATA + MATCHING part of right side -> LEFT OUTER JOIN
-- iii) RIght Table DATA + MATCHING part of left side-> RIGHT OUTER JOIN
-- iv)  BOTH TABLE DATA -> FULL OUTER JOIN (HYPOTHETICAL- doesnt exist in MYSQL)

CREATE TABLE DEPARTMENT
(
   DEPTCODE   INT(10) PRIMARY KEY ,
   DeptName   VARCHAR(15) UNIQUE,
   LOCATION VARCHAR(33) NOT NULL
);

INSERT INTO DEPARTMENT VALUES (10, 'FINANCE', 'EDINBURGH'),
                              (20,'SOFTWARE','PADDINGTON'),
                              (30, 'SALES', 'MAIDSTONE'),
                              (40,'MARKETING', 'DARLINGTON'),
                              (50,'ADMIN', 'BIRMINGHAM');

-- INNERJOIN 

SELECT * FROM employee
INNER JOIN department ON
employee.DEPTCODE = department.DEPTCODE;

SELECT employee.DEPTCODE , 
department.DeptName, 
department.LOCATION , 
employee.EmpFName, 
employee.EmpLName 
FROM department
INNER JOIN employee ON 
-- on which column you need comparision
employee.DEPTCODE = department.DEPTCODE;

--INNERJoin
-- select everything from employee

-- INNER JOIN to get all the results
SELECT * FROM employee
-- and while selecting from employee make a inner join with department
INNER JOIN DEPARTMENT
ON employee.DEPTCODE=DEPARTMENT.DEPTCODE;

SELECT employee.DEPTCODE, 
department.DEPTCODE as depcode , 
employee.email, 
department.LOCATION
FROM department -- department columns will get first because it is written first
INNER JOIN employee -- employee column will come second because it is written second or after INNERJOIN
-- 
ON DEPARTMENT.DEPTCODE = employee.DEPTCODE;

-- to get your result in a given order

SELECT employee.DEPTCODE as eDEPTCODE, 
employee.EmpFName,
department.LOCATION,
department.DeptName
FROM department
-- and while selecting from employee make a inner join with department
INNER JOIN employee
-- on which column we need to make intersection
-- on intersection corresponding rows of both the table will be joined
ON DEPARTMENT.DEPTCODE=employee.DEPTCODE;

-- list of employees who belong to a valid particular department

-- LEFT 
SELECT employee.DEPTCODE as EDEPTCODE, 
department.DEPTCODE ,
employee.EmpFName, 
department.LOCATION
FROM employee
LEFT JOIN department
ON  employee.DEPTCODE= DEPARTMENT.DEPTCODE;

--RIGHT

SELECT employee.DEPTCODE as EDEPTCODE, 
department.DEPTCODE ,
employee.EmpFName, 
department.LOCATION
FROM employee
RIGHT JOIN department
ON  employee.DEPTCODE= DEPARTMENT.DEPTCODE;

-- FULL OUTER JOIN

 
SELECT employee.DEPTCODE as EDEPTCODE, 
department.DEPTCODE ,
employee.EmpFName, 
department.LOCATION
FROM employee
LEFT JOIN department
ON  employee.DEPTCODE= DEPARTMENT.DEPTCODE;

UNION

SELECT employee.DEPTCODE as EDEPTCODE, 
department.DEPTCODE ,
employee.EmpFName, 
department.LOCATION
FROM employee
RIGHT JOIN department
ON  employee.DEPTCODE= DEPARTMENT.DEPTCODE;