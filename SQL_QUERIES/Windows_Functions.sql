------Windows Functions
CREATE TABLE employee_v2
(
   EmpCode      INT,
   EmpFName     VARCHAR(15),
   EmpLName     VARCHAR(15),
   Job          VARCHAR(45),
   Manager      CHAR(4),
   HireDate     DATE,
   Salary       INT,
   Commission   INT,
   DEPTCODE     INT
);


INSERT INTO employee_v2  
VALUES (9369, 'TONY', 'STARK', 'SOFTWARE ENGINEER', 7902, '1980-12-17', 2800,0,20),
       (9499, 'TIM', 'ADOLF', 'SALESMAN', 7698, '1981-02-20', 1600, 300,30),    
       (9566, 'KIM', 'JARVIS', 'MANAGER', 7839, '1981-04-02', 3570,0,20),
       (9654, 'SAM', 'MILES', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
       (9782, 'KEVIN', 'HILL', 'MANAGER', 7839, '1981-06-09', 2940,0,10),
       (9788, 'CONNIE', 'SMITH', 'ANALYST', 7566, '1982-12-09', 3000,0,20),
       (9839, 'ALFRED', 'KINSLEY', 'PRESIDENT', 7566, '1981-11-17', 5000,0, 10),
       (9844, 'PAUL', 'TIMOTHY', 'SALESMAN', 7698, '1981-09-08', 1500,0,30),
       (9876, 'JOHN', 'ASGHAR', 'SOFTWARE ENGINEER', 7788, '1983-01-12',3100,0,20),
       (9900, 'ROSE', 'SUMMERS', 'TECHNICAL LEAD', 7698, '1981-12-03', 2950,0, 20),
       (9902, 'ANDREW', 'FAULKNER', 'ANAYLYST', 7566, '1981-12-03', 3000,0, 10),
       (9934, 'KAREN', 'MATTHEWS', 'SOFTWARE ENGINEER', 7782, '1982-01-23', 3300,0,20),
       (9591, 'WENDY', 'SHAWN', 'SALESMAN', 7698, '1981-02-22', 500,0,30),
       (9698, 'BELLA', 'SWAN', 'MANAGER', 7839, '1981-05-01', 3420, 0,30),
       (9777, 'MADII', 'HIMBURY', 'ANALYST', 7839, '1981-05-01', 2000, 200, NULL),
       (9860, 'ATHENA', 'WILSON', 'ANALYST', 7839, '1992-06-21', 7000, 100, 50),
       (9861, 'JENNIFER', 'HUETTE', 'ANALYST', 7839, '1996-07-01', 5000, 100, 50);


---Windows Functions - used to operate on a window (a set or group of rows)
--- syntax
function_name() OVER (
PARTITION BY parititon_column
ORDER BY column_name [ASC | DESC])
/*
1.Ranking Functions
ROW_NUMBER() --- assign a unique sequential number to each row within the partition
RANK() --- in case of duplicate , will have gaps in the ranking
DENSE_RANK() --- no gaps in the ranking
NTILE()

*/
---1.ROW_NUMBER() 

WITH stage_salary
AS
(SELECT
EmpFName,
EmpLName,
Job,
Salary,
ROW_NUMBER() OVER (PARTITION BY Job ORDER BY Salary DESC) AS SalaryRank
FROM employee_v2 )
SELECT * FROM stage_salary
WHERE SalaryRank =3
---2.RANK()
WITH stage_salary
AS
(SELECT
EmpFName,
EmpLName,
Job,
Salary,
RANK() OVER (PARTITION BY Job ORDER BY Salary DESC) AS SalaryRank
FROM employee_v2 )
SELECT * FROM stage_salary
WHERE SalaryRank = 4

---3. DENSE_RANK()
WITH stage_salary
AS
(SELECT
EmpFName,
EmpLName,
Job,
Salary,
DENSE_RANK() OVER (PARTITION BY Job ORDER BY Salary DESC) AS SalaryRank
FROM employee_v2 )
SELECT * FROM stage_salary
WHERE SalaryRank = 3

---4. NTILE() -- divides rows into specified number of groups
WITH stage
AS(
SELECT
EmpCode,
EmpFName,
Job,
Salary,
HireDate,
NTILE(4) OVER (ORDER BY Hiredate DESC) AS Quarter
FROM employee_v2)
select * from stage
WHERE Quarter = 4

--Analytical Funcctions----FIRST_VALUE() and LAST_VALUE()
---USED to get the first value and last value from the partition
---
SELECT 
EmpFName,
Job,
LAST_VALUE(salary) OVER (PARTITION BY Job ORDER BY SALARY DESC
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS LAST_Value --,
--LAST_VALUE(salary) OVER (PARTITION BY Job ORDER BY SALARY ) AS Lowest_salary
 FROM employee_v2
--WHERE Job='ANALYST'

select 

--- LAG() and LEAD()
---LAG(salary,1,'0') 
---LAG(col_name,offset_value, default Value) --- in case of NULL default value will be used
SELECT 
EmpFName,
Job,
LAG(salary,2,'0') OVER (PARTITION BY Job ORDER BY SALARY DESC) AS PreviousSalary--,
--LEAD(salary) OVER (PARTITION BY Job ORDER BY SALARY ASC ) AS NextSalary
FROM employee_v2
WHERE Job = 'ANALYST'



ROWS BETWEEN 

UNBOUNDED PRECEDING --- start the window at very first row of the partition

AND UNBOUNDED FOLLOWING --- end the window at very last row of the partition



select EmpFName,Job,Salary 
from employee_v2 WHERE Job = 'ANALYST' ORDER BY SALARY DESC

select job, count(*) as total_number 
from employee_v2
group by job

--- second highest salary and by every job role
select TOP 2 * 
from employee_v2
where job  = 'SOFTWARE ENGINEER' ORDER BY salary desc
and salary = (select max(salary) from employee_v2 where job  = 'SOFTWARE ENGINEER' )

select EmpFName,Job,Salary 
from employee_v2 order by Job desc

----
LEAD() --- used to access the data from the next rows
LAG() --- When we want to access the data from the previous rows
