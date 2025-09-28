USE SALES
-- DROP TABLE dmart
--get the data from employees table
SELECT * --emp_name,emp_salary 
FROM EMPLOYEES

---

CREATE DATABASE dmart
USE dmart

CREATE TABLE billing
(billingNumber nvarchar(250),item nvarchar(250),quantity INT,price decimal(16,2),createdDate date)

ALTER TABLE billing 
---ADD/UPDATE/DROP COLUMN
ALTER COLUMN quantity decimal(16,2)


ALTER TABLE billing
DROP COLUMN Contact

SELECT * 
FROM billing

--- renaming objects
EXEC sp_rename 'billing' , 'dmart_billing'

TRUNCATE TABLE billing