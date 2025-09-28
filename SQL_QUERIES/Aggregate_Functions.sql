----Aggregate Functions
COUNT() - returns number of rows
SUM()   - sum from int/num column
AVG()   - average from int/num column
MIN()   - lowest values from column
MAX()   - highest values from column

--- When we are using aggregate functions
--- it will ignore NULL values
--- 
GROUP BY - returns the results into groups of values

--select * from employee

--ALTER TABLE employee
--ADD EmpSalary FLOAT 

UPDATE employee
SET EmpSalary = 1500
WHERE EmpId = 1003

SELECT MIN(EmpSalary) AS LowestSalary FROM employee
WHERE EmpSalary > 2000
SELECT MAX(EmpSalary) AS HighestSalary FROM employee
SELECT SUM(EmpSalary) AS TotalSalary FROM employee
SELECT AVG(EmpSalary) AS AverageSalary FROM employee

SELECT 
SUM(EmpSalary) AS DeptWiseSalary, Designation
FROM employee
GROUP BY Designation

---
SELECT 
MIN(EmpSalary) AS DeptWiseSalary , Designation
FROM employee
GROUP BY Designation
---

SELECT 
Designation
FROM employee
GROUP BY Designation

SELECT *  from employee

SELECT SUM(EmpSalary) from employee

SELECT 1 + NULL
NULL ---> field with no value / unknown data
''
0

UPDATE employee
SET EmpSalary=''
WHERE EmpId = 1006
0
SELECT * 
FROM employee
WHERE EmpPassport IS NOT NULL

UPDATE employee
SET EmpRemarks = ''
WHERE EmpId=1005
SELECT DISTINCT Designation  from employee

SELECT COUNT(DISTINCT Designation)  from employee

--- return the employees higher than avg salary
SELECT * 
FROM employee 
WHERE EmpSalary > (SELECT AVG(EmpSalary) FROM employee)

SELECT COUNT(*) , Designation 
FROM Employee 
GROUP BY Designation

----HAVING CLAUSE is used to apply the condition on top of AGGREGATED results using GROUP BY
SELECT Designation,AVG(EmpSalary) AS AVG_DEPTSalary
FROM Employee
GROUP BY Designation
HAVING AVG(EmpSalary) > 3500

---Combination of WHERE and GROUP BY
SELECT TOP 100 Designation,MAX(EmpSalary) AS MAX_DEPTSalary
FROM Employee
WHERE EmpId < 1005
GROUP BY Designation
HAVING MAX(EmpSalary) > 2000
ORDER BY Designation

SELECT top 5 * from employee
ORDER BY EmpSalary DESC

SELECT top 3 *
FROM employee
WHERE EmpSalary > 2000
ORDER BY EmpSalary

---ORDER BY --- ASC default -- DESC need to mention explicitly
SELECT * 
FROM employee
ORDER BY EmpSalary DESC

SELECT * 
FROM employee
ORDER BY EmpLicense ASC

SELECT DISTINCT empremarks from employee
zen
zem

Roy
Rohit