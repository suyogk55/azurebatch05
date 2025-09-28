----Common Table Expressions (CTEs) 
---- Temporary named results - which exists only during execution


--1. Filter the rows for BPO department
--2. combine the EmpName and EmpId
--3. select with salary > 3000

select EmpId,EmpName,Designation,EmpSalary,
CAST(EmpId AS VARCHAR)+EmpName AS NameID
from employee 
where designation = 'BPO' AND EmpSalary>3000

WITH CTE_NAME
AS
(
   CTE1 QUERY
)
---Main query using that CTE
SELECT * from CTE_NAME
---Single CTE
WITH emp_stage
AS
(
select EmpId,EmpName,Designation,EmpSalary
from employee 
where designation = 'BPO'
)

SELECT *,CAST(EmpId AS VARCHAR)+EmpName AS NameID 
FROM emp_stage WHERE EmpSalary>3000

---Multiple CTEs / EXAMPLE OF UNION / ALL

WITH emp_bpo
AS
(  ----SELECT,INSERT,DELETE,UPDATE
select EmpId,EmpName,Designation,EmpSalary
from employee 
where designation = 'BPO'
),
emp_it
AS
(
select EmpId,EmpName,Designation,EmpSalary
from employee 
where designation = 'IT'
),
emp_account
AS
(
select EmpId,EmpName,Designation,EmpSalary
from employee 
where designation = 'Account'
)
SELECT * FROM emp_bpo
UNION ALL
SELECT * FROM emp_it
UNION ALL
SELECT * FROM emp_account

---UNION will remove duplicate rows
---UNION ALL will keep duplicate rows

WITH emp_bpo
AS
(  ----SELECT,INSERT,DELETE,UPDATE
select EmpId,EmpName,Designation,EmpSalary,
 DENSE_RANK() OVER (ORDER BY EmpSalary DESC) AS salarywise_rank
from employee 
where designation = 'BPO'
)
select * from emp_bpo
