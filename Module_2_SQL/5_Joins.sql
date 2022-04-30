-- JOINS
-- are tools that are used to access data from 
--two or more tables with the help of a common attribute
-- 1 - access data of both the tables

-- 4 types of joins
-- i)   Common data (intersection) -> INNER JOIN
-- ii)  Left Table DATA -> LEFT OUTER JOIN
-- iii) RIght Table DATA -> RIGHT OUTER JOIN
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