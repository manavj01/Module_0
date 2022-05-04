-- Candidate key - That is used to uniquely identify a entry is known as a Primary key -> Cid

-- Cid column inside order table is a foreign key
-- It is an atribute that is a primary key inside another table

-- Foreign key - it is an attribute that is primary key in another table
-- Primary key - it is used to define a unique entity in a table

CREATE TABLE cust(
    cid INTEGER NOT NULL UNIQUE,
    phNO INTEGER NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(cid)
);

-- without parent you cant have child
-- if you have a fk then you cant delete or update the corresponding parent key entry
CREATE TABLE orders(
    oid INTEGER NOT NULL UNIQUE,
    pName VARCHAR(255) NOT NULL,
    cid INTEGER,

    FOREIGN KEY(cid) REFERENCES cust(cid)
);

-- ON UPDATE CASCADE
-- ON UPDATE DELETE

-- jab bhi parent table mai se aapki koi bhi entry remove hogi to 
-- uske associated data children se bhi remove ho jaayega
DROP TABLE ORDERS;

CREATE TABLE orders(
    oid INTEGER NOT NULL UNIQUE,
    pName VARCHAR(255) NOT NULL,
    cid INTEGER,

    FOREIGN KEY(cid) REFERENCES cust(cid) ON UPDATE CASCADE ON DELETE CASCADE
 );


 INSERT INTO ORDERS VALUES(2, "pencil", 1);
 INSERT INTO cust VALUES(2, 100, "JASBIR");
 INSERT INTO ORDERS VALUES(4,"eraser",2);
 
 DELETE FROM CUST WHERE cid=1;

