USE dmart

CREATE TABLE Customers(customer_id int,first_name varchar(255))
INSERT INTO Customers VALUES
(1,'John'),
(2,'Robert'),
(3,'David'),
(4,'John'),
(5,'Betty'),


CREATE TABLE Orders(order_id int,amount int,customer int)

INSERT INTO Orders VALUES
(1,200,10),
(2,500,3),
(3,300,6),
(4,800,5),
(5,150,8)

SELECT * FROM customers
SELECT * FROM orders

/*
JOIN clause is used to combine rows from multiple tables
based on the related columns between tables
*/

---JOIN / INNER JOIN
SELECT cust.customer_id,cust.first_name,ord.amount
FROM customers cust
INNER JOIN orders ord
ON cust.customer_id=ord.customer --AND cust.customer_id >3
WHERE cust.customer_id >3

---LEFT JOIN /LEFT OUTER JOIN
SELECT cust.customer_id,cust.first_name,ord.amount
FROM customers cust
LEFT OUTER JOIN orders ord
ON cust.customer_id=ord.customer 

---RIGHT JOIN /RIGHT OUTER JOIN
SELECT cust.customer_id,cust.first_name,ord.amount
FROM customers cust
RIGHT OUTER JOIN orders ord
ON cust.customer_id=ord.customer

---FULL JOIN

SELECT cust.customer_id,cust.first_name,ord.amount
FROM customers cust
FULL JOIN orders ord
ON cust.customer_id=ord.customer


----CROSS JOIN
create table A (id int)
create table B (cid char)


SELECT A.id , B.cid
FROM A
CROSS JOIN B

INSERT into  B values ('A')
INSERT into  B values ('B')
INSERT into  B values ('C')

SELECT * FROM A
SELECT * FROM B

---NATURAL JOIN --- Not supported in MSSQL 
SELECT cust.customer_id,cust.first_name,ord.amount
FROM customers cust
NATURAL JOIN orders ord

---
