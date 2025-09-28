CREATE TABLE employee_test(
EmpId INT,
EmpName VARCHAR(250) NOT NULL,
EmpLicense VARCHAR(250) ,
EmpPassport VARCHAR(250) ,
EmpRemarks VARCHAR(max) NULL
)

INSERT INTO employee_test 
(EmpId,EmpName,EmpLicense,EmpPassport,EmpRemarks)
VALUES
--(1001,'Matt', 'LC1205','MA100LC','5 Years Anniversary'),
--(1002,'Maxy', 'LC2079','XY100LC2','15 Years Anniversary'),
(1006,'Roye', 'LK009264','LK3100RO','25 Years Anniversary')


----DISTINCT
SELECT DISTINCT EmpId,EmpName
FROM employee_test

SELECT COUNT(DISTINCT EmpId) FROM employee_test

SELECT TOP 100 * FROM employee_test
---WHERE
SELECT * FROM employee_test
WHERE EmpId=1001 OR EmpLicense = 'LC1201'

SELECT * FROM employee_test
WHERE EmpId <= 1003 --OR EmpLicense = 'LC1201'

!= Not Equal
<> Not Equal
> Greater Than
< Lesser Than
<= Lesser Than or equal to
>= Greater Than or equal to
1001
1002
1003

---BETWEEN
SELECT * FROM employee_test
WHERE EmpId BETWEEN 1002 AND 1005--OR EmpLicense = 'LC1201'

---IN

SELECT * FROM employee_test
WHERE EmpId IN 
(
1001,
1002,
1003
)

---NOT EQUAL TO ------
!=
<>
SELECT * FROM employee_test
WHERE EmpId != 1003


---LIKE
SELECT * FROM employee_test
WHERE EmpName LIKE 'Mat%'

SELECT * FROM employee_test
WHERE EmpName LIKE '%t'

SELECT * FROM employee_test
WHERE EmpName LIKE '%oye%'

---name starting with R and having length of 3 letters
SELECT * FROM employee_test
WHERE EmpName LIKE '%R__%'

---Alias ---temporary name --- AS keyword is optional
SELECT
EmpId AS EmployeeID,
EmpName AS EmployeeName,
EmpLicense AS EmployeeLicense ,
EmpPassport AS EmployeePassport ,
EmpRemarks AS EmployeeRemarks
FROM employee_test


