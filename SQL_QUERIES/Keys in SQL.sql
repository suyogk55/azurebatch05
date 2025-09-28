USE dmart
---Primary Key


CREATE TABLE employee(
EmpId INT PRIMARY KEY,
EmpName VARCHAR(250) NOT NULL,
EmpLicense VARCHAR(250) UNIQUE,
EmpPassport VARCHAR(250) UNIQUE,
EmpRemarks VARCHAR(max) NULL
)
INSERT INTO employee 
(EmpId,EmpName,EmpLicense,EmpPassport,EmpRemarks)
VALUES
(1001,'Matt', 'LC1201','MA100LC','5 Years Anniversary'),
(1002,'Maxy', 'LC2078','XY100LC2','15 Years Anniversary'),
(1003,'Roy', 'LK00928','LK100RO','20 Years Anniversary')

select * from employee


INSERT INTO employee 
(EmpId,EmpName,EmpLicense,EmpPassport,EmpRemarks)
VALUES
(1007,'Suraj', 'Suraj_NA','NA','new joinee')

1001MA100LC
UPDATE employee
SET EmpLicense = 'IND2001',
EmpPassport='INDP2001'
WHERE EmpId=1005

(1003,'Rohit', NULL,NULL,NULL),
(1003,NULL, NULL,NULL,NULL)


---

CREATE TABLE employee_composite(
EmpId INT,
EmpName VARCHAR(250) NOT NULL,
EmpLicense VARCHAR(250) ,
EmpPassport VARCHAR(250) ,
EmpRemarks VARCHAR(max) NULL,
PRIMARY KEY(EmpId,EmpLicense))

INSERT INTO employee_composite 
(EmpId,EmpName,EmpLicense,EmpPassport,EmpRemarks)
VALUES
(1001,'Matt', 'LC1202','MA100LC','5 Years Anniversary')
--(1001,'Matt', 'LC1201','MA100LC','5 Years Anniversary'),
--(1002,'Maxy', 'LC1201','XY100LC2','15 Years Anniversary')

select EmpId,EmpLicense from employee_composite

CREATE TABLE employee_candidate_key(
EmpId INT PRIMARY KEY,
EmpName VARCHAR(250) NOT NULL,
EmpLicense VARCHAR(250) UNIQUE NOT NULL,
EmpPassport VARCHAR(250) UNIQUE NOT NULL,
EmpRemarks VARCHAR(max) NULL
)

INSERT INTO employee_candidate_key 
(EmpId,EmpName,EmpLicense,EmpPassport,EmpRemarks)
VALUES
(1002,'Max', NULL,'MA101LC','5 Years Anniversary')


---- Foregin Key
USE dmart

CREATE TABLE emp_department(
Did INT PRIMARY KEY ,
Department varchar(250)
)

INSERT INTO emp_department VALUES
(1,'BPO'),
(2,'Account'),
(3,'IT')

select * from emp_department


 select *  FROM [dmart].[dbo].[employee]


 ---Scenario 1 --- Add Foreign Key into existing table

ALTER TABLE employee
ADD DeptId Int

ALTER TABLE employee
ADD CONSTRAINT FK_empDepartment 
FOREIGN KEY (DeptId) REFERENCES emp_department(Did)

 select *  FROM [dmart].[dbo].[employee]
 where deptid=1
 select *  FROM [dmart].[dbo].[emp_department]

 UPDATE [dmart].[dbo].[employee]
 SET DeptId = 1
 WHERE EmpID=1006


 ---- Scenario -2 - create table and define foreign key

 CREATE TABLE account_test(
 account_id varchar(250),
 account_name varchar(250),
 DeptId int,
 FOREIGN KEY (DeptId) REFERENCES emp_department(Department))

 INSERT INTO account
 VALUES
 (101,'D365_fin',4),
  (20,'D365',2),
   (30,'D365',3)

SELECT * FROM emp_department


INSERT INTO emp_department VALUES
(4,'Finance')

