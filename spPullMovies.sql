
--How to create Stored Procedure

CREATE PROCEDURE spPullMoviesInfo
AS

SELECT Name
      ,Type
      ,Rating
      ,Stars
      ,Qty
      ,Price
  FROM MOVIES

  --How to Run Stored Procedure

  EXEC spPullMoviesInfo

  /**
  Trying to understand the process of moving 
  stored Procedure code to GitHub

  **/