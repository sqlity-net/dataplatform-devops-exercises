EXEC tSQLt.NewTestClass 'Reports_MySysDateTime_Tests';
GO
CREATE PROCEDURE Reports_MySysDateTime_Tests.[test returns SYSDATETIME()]
AS
BEGIN
  DECLARE @actual DATETIME2;
  DECLARE @after DATETIME2;
  DECLARE @before DATETIME2;
  
  SET @before = SYSDATETIME();  
  
  SET @actual = (SELECT Now FROM Reports.MySysDateTime() AS MSDT);
  
  SET @after = SYSDATETIME();  
    
  IF(@actual < @before OR @actual > @after OR @actual IS NULL)
  BEGIN
    DECLARE @msg NVARCHAR(MAX) = 
      'Expected:'+
      CONVERT(NVARCHAR(MAX),@before,121)+
      ' <= '+
      ISNULL(CONVERT(NVARCHAR(MAX),@actual,121),'!NULL!')+
      ' <= '+
      CONVERT(NVARCHAR(MAX),@after,121);
      EXEC tSQLt.Fail @msg;
  END;
  
END;
GO


