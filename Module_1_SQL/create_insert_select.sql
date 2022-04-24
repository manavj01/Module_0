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
DROP table emp;
-- insert into specific columns
INSERT INTO emp (name,salary,gender) VALUES ("MANAV", 5000, "M");
-- insert into all columns
INSERT INTO emp VALUES(3,"DEEJE" , 8567032032, 5000, "Tech" ,24, "F");
select * from emp;