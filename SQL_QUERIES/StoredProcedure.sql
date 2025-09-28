select ts.empname,ed.Department from top_salaries ts
JOIN emp_department ed
ON ts.DeptId = ed.Did

create table test_delete(a int)

select * from dmart.dbo.test_delete

CREATE SCHEMA dev;
CREATE SCHEMA qa;
CREATE SCHEMA prod;

create table prod.test_tech(a int)

SELECT * FROM employee
WHERE EmpId = 1005

--Stored Procedure is a collection of one or more sql statements
--@EmployeeId INT
CREATE PROCEDURE dev.GetSpecificEmployeeByNameId
@EmployeeId INT,
@employeeName varchar(250)
AS
BEGIN 
         SELECT * FROM employee
		 WHERE EmpId = @EmployeeId and empname = @employeeName;

END
GO

--Execute stored procedure
EXEC  dev.GetSpecificEmployeeByNameId @EmployeeId=1008, @employeeName = 'yan'

CREATE PROCEDURE dev.DeleteSpecificEmployee
@EmployeeId INT
AS
BEGIN
    INSERT INTO dbo.employee_deleted_backup SELECT * FROM dbo.employee WHERE EmpId = @EmployeeId ;

	DELETE FROM employee WHERE EmpId = @EmployeeId ;
END


EXEC dev.DeleteSpecificEmployee @EmployeeId=1005


select * from dbo.employee_deleted_backup


DROP PROCEDURE dev.TestSpecificEmployee
CREATE PROCEDURE dev.TestSpecificEmployee
@EmployeeId INT = NULL
AS
BEGIN
    SELECT * FROM dbo.employee WHERE EmpId = @EmployeeId ;

END


EXEC dev.TestSpecificEmployee @EmployeeId =1001
---INSERT INTO dbo.employee_backup SELECT * FROM dbo.employee_backup 
[dev].[DeleteSpecificEmployee]
SELECT * FROM [dbo].[employee_deleted_backup]