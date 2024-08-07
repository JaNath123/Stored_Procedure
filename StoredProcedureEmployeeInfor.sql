-- How to create stored Procedure

CREATE PROCEDURE sp_EmployeeInfo
AS

BEGIN

DROP TABLE IF EXISTS EmployeeInfoBackUp
 
SELECT * INTO EmployeeInfoBackUp
FROM EmployeeInfo

SELECT *
FROM EmployeeInfoBackUp

SELECT [Employee_ID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  --How to run Stored Procedure

  EXEC sp_EmployeeInfo


--How to Remove Stored Procedure

DROP PROCEDURE sp_EmployeeInfo


--HOW TO CREATE Backup Table

SELECT * INTO EmployeeInfoBackUp
FROM EmployeeInfo

SELECT *
FROM EmployeeInfoBackUp
