-- GROUP BY - 1 To form GROUPs
            --2 To apply aggregate on those groups

--1. default
-- only valid single column is the one 
-- the basis of which you made group by 
SELECT designation FROM employee
-- i will make group on the basis of given column
GROUP BY designation; 

--2. if you are using GROUP BY : column aggregate data get -> get
-- grouped
SELECT designation , COUNT(*) as "no. of emp per dept" FROM employee
-- i will make group on the basis of given column
GROUP BY designation; 

-- HAVING - 1 It is always used with an aggregate function
        --  2 used to add condition on group data
        --  3 comes after group by statement

-- ques : designation tell me ki highest salary kya hai?
-- but ignore where the highest salary os less than 3000?
SELECT designation , COUNT(*) as "no. of emp per dept" FROM employee
-- i will make group on the basis of given column
GROUP BY designation
HAVING MAX(salary)>3000;
-- to put condition on group by ka output
-- uspe condition lgane ke kaam aata hai

-- WHERE 
-- ques : designation tell me ki highest salary kya hai?
-- i also dont want data of dept code 20
SELECT designation , 
COUNT(*) as "no. of emp per dept",
Max(salary) as "Max Salary" 
FROM employee
-- i will make group on the basis of given column
WHERE DEPTCODE <> 20
GROUP BY designation;
-- to put condition on group by ka output
-- uspe condition lgane ke kaam aata hai

--ques : designation tell me ki highest salary kya hai?
-- i also dont want data of designation of salesman
SELECT designation , 
COUNT(*) as "no. of emp per dept",
Max(salary) as "Max Salary" 
FROM employee
-- i will make group on the basis of given column
WHERE designation <> "SALESMAN" 
GROUP BY designation;

-- ques - give me the avg salaries of the employee
-- DEPTCODE wise where number of employees is more then 2 
-- in increasing order