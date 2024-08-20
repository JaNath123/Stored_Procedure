-- how to join/merge two Colunm together with spacing the words

SELECT [Employee_ID]
      ,[FirstName] + ' ' + LastName AS EmployeeName
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  SELECT [Employee_ID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  -- how to change the Colunm to upperCase

  SELECT [Employee_ID]
      ,Lower ([FirstName] + ' ' + LastName) AS EmployeeName
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  --How to concatinate two words without spacing/ joining two words

  SELECT [Employee_ID]
      ,[FirstName] + ' ' + LastName AS EmployeeName
	  ,[FirstName] + LastName AS EmployeeName2
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  --how to show first 4 letters of the lastName
 
  SELECT [Employee_ID]
	  ,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  --create a new table and call it EmployeeString

SELECT [Employee_ID]
	  ,Substring (LastName, 1,6) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
	  INTO EmployeeString
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  SELECT *
  FROM EmployeeString

SELECT *
  FROM EmployeeString AS ES
  JOIN EmployeeInfo AS EI
  ON ES.LastName_string = EI.LastName

  SELECT *
  FROM EmployeeString AS ES
  JOIN EmployeeInfo AS EI
  ON ES.LastName = EI.LastName

    SELECT [Employee_ID]
	  ,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
	  INTO EmployeeInfo_String
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

SELECT *
  FROM EmployeeInfo_String

  --Join Table EmployeeInfo_String lastName_string to EmployeeInfo Lastname
 
 SELECT *
  FROM EmployeeInfo_String AS ES
  JOIN EmployeeInfo AS EI
  ON ES.LastName_String = EI.LastName

--Join Table EmployeeInfo_STring LastName to EmployeeInfo LastName
 SELECT *
  FROM EmployeeInfo_String AS ES
  JOIN EmployeeInfo AS EI
  ON ES.LastName = EI.LastName

-- how to join two tabbles together using Union 
--Union shows unique records/ eliminates duplicates

 SELECT [Employee_ID]
	  --,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo
UNION 
SELECT [Employee_ID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo_String

  --Union All does not show unique records and does not eliminate duplicates
   SELECT [Employee_ID]
	  --,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo
UNION ALL
SELECT [Employee_ID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo_String

-- creating a fake colunm

  SELECT [Employee_ID]
	 , 'Employeeinfo_String ' as TableName
	  ,LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo_String
  Union All
  SELECT [Employee_ID]
   , 'Employeeinfo ' as TableName
	  ,' 'AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo

   --to eliminate duplicate

   SELECT [Employee_ID]
	 --, 'Employeeinfo_String ' as TableName
	  --,LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo_String
  Union 
  SELECT [Employee_ID]
   --, 'Employeeinfo ' as TableName
	 -- ,' 'AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
  FROM EmployeeInfo


  --TEMPORARY TABLE (TEMP TABLE) AND GLOBAL TABLE

  --Tem Table ( are accessible in the current session)
  --to create a Temp Table,  you add Pan (#) sign infront of the table name

    SELECT [Employee_ID]
	  ,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
	  INTO #EmployeeInfo_String
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  -- to check the Temp Table

  SELECT *
  FROM  #EmployeeInfo_String

  --Global Table
   --Global Table ( are accessible in the other sessions)
  --to create a Global Table,  you add  2 hash  (##) sign infront of the table name

      SELECT [Employee_ID]
	  ,Substring (LastName, 1,4) AS LastName_String
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[Country]
      ,[Salary]
	  INTO ##EmployeeInfo_String
  FROM [Chiplus_Ben].[dbo].[EmployeeInfo]

  SELECT *
  FROM ##EmployeeInfo_String