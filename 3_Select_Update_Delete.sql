-- SELECT clause
        --everything
            SELECT * FROM employee;
        -- columns
            SELECT EmpCode,EmpFName,EmpLName FROM employee;

            -- SELECT with multiple clauses
            SELECT column or * FROM TABLENAME
            -- WHERE -> for putting conditions
            SELECT * FROM employee
            WHERE salary>2000;
                -- WHERE manager code =7566;
            SELECT EmpFName,EmpLName,DEPTCODE FROM employee
            WHERE ManagerCode=7566;
            -- GROUP BY -> 
            -- HAVEING
            -- ORDER BY
            -- ORDER

        --operators-> 
            -- comparison : =, >, <,>= ,<=
            -- <> -> not Eaquals
            -- Logical operator: AND, OR, BETWEEN, LIKE, NOT, LIKE 
    --ORDER BY -> by default ordering asc
        SELECT * FROM employee ORDER BY salary;
        -- Desc order
        SELECT * FROM employee ORDER BY salary DESC;
        
        -- in the case of common order data
        SELECT * FROM employee ORDER BY salary DESC, DEPTCODE ASC;
        
        --using  where clause
        SELECT * FROM employee 
        WHERE salary >2000
        ORDER BY salary DESC, DEPTCODE ASC; 

    -- aggregate functions : count , sum , Avg , max , min

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

    -- get dept - 
    -- it is used to get data on the basis of a group
    -- it gives summary of a group
    -- it also applies those aggregate functions on that group only

    -- count how many people in same dept (group by basis of dept )
    SELECT DEPTCODE , COUNT(DEPTCODE) FROM employee
    GROUP BY DEPTCODE;
    -- will give maximum salary in that department
    SELECT DEPTCODE, MAX(salary) FROM employee
    GROUP BY DEPTCODE;
    -- will give maximum salary in that department with Fname & Lname
    SELECT DEPTCODE, MAX(salary),EmpFName,EmpLName FROM employee
    GROUP BY DEPTCODE;

    -- 1- on the basis of which you are going to do group by -> 
    -- i will print it only once if you select it
    -- 2- means aggregate function ka output dega group wise

    -- 3- HAVING - used to add check on group by 
    -- dept code -> min salary -> min salary > 2000
    SELECT DEPTCODE, MIN(salary),EmpFName,EmpLName FROM employee
    GROUP BY DEPTCODE
    -- 4- we use having to put condition on aggregate function. ex- MIN(salary) 
    HAVING MIN(salary>2000);
    -- ex2
    SELECT DEPTCODE, MIN(salary),EmpFName,EmpLName FROM employee
    GROUP BY DEPTCODE
    HAVING MIN(commission>2000);

    -- GROUP BY and HAVING examples

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
