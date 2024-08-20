/** 
 ASSIGNMENT 
 1. Create a Temp tables and Global table (used to create stored procedure)
 2. create substrings combine two colunm together . show values as lower and uppercase
  3. substring using 1 and 6 and join the tables together
  eg create noble and noble_substring, use the substring of 6 (ie 1 and 6)
  4. create a union and union all with the creeated table 
  
  

  **/
  --QS 1. CREATE A TEMP AND GLOBAL TABLE

  --TEMP TABLE

SELECT  [Car_ID]
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
	  INTO #CarDealer
  FROM [master].[dbo].[CarDealer]

  -- HOW TO CHECK FOR THE TEMP TABLE

  SELECT *
  FROM #CarDealer

  --GLOBAL TABLE

  SELECT  [Car_ID]
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
	  INTO ##CarDealer
  FROM [master].[dbo].[CarDealer]

  --HOW TO CHECK FOR GLOBAL TABLE

  SELECT *
  FROM ##CarDealer


  --- QS 2. create substrings combine two colunm together . show values as lower and uppercase

  --SUBSTRING COMBINING TOW COLUNMS WITH UPPERCASE

  SELECT  [Car_ID]
	  ,Upper ([Make] + ' ' + Model) AS Make_String
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
	 --INTO CarDealer_String
  FROM [master].[dbo].[CarDealer]

  SELECT *
  FROM CarDealer_String

  --SUBSTRING COMBINING TOW COLUNMS WITH LOWERCASE

   SELECT  [Car_ID]
	  ,Lower ([Make] + ' ' + Model) AS MakeString_Lower
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
	-- INTO CarDealer_String
  FROM [master].[dbo].[CarDealer]

  --qs 3A.  substring using 1 and 6 and join the tables together

  SELECT  [Car_ID]
	  ,Substring (StoreLocation, 1, 6) AS Storelocation_String
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
	 INTO CarDealerString
  FROM [master].[dbo].[CarDealer]

  SELECT *
  FROM CarDealerString
 
 --QS 3B. JOIN BOTH TABLES TOGETHER

SELECT *
  FROM CarDealerString AS CS
  JOIN CarDealer AS CD
  ON CS.StoreLocation = CD.StoreLocation

--QS 4A.UNION TO SHOW UNIQUE RECORD

 SELECT  [Car_ID]
	 -- ,Lower ([Make] + ' ' + Model) AS MakeString_Lower
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
  FROM CarDealer
  UNION
 SELECT  [Car_ID]
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
 FROM CarDealer_String
  
--QS 4B. UNION ALL TO SHOW DUPLICATE RECORDS

 SELECT  [Car_ID]
	 -- ,Lower ([Make] + ' ' + Model) AS MakeString_Lower
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
  FROM CarDealer
  UNION ALL
 SELECT  [Car_ID]
      ,[Make]
      ,[Model]
      ,[Price]
      ,[StoreLocation]
      ,[CustomerID]
 FROM CarDealer_String
  