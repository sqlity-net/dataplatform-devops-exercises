EXEC tSQLt.NewTestClass 'Reports_CalculateReportDateRange_Tests';
GO
CREATE FUNCTION Reports_CalculateReportDateRange_Tests.[--> 2123-12-23T01:23:45.678987]()
RETURNS TABLE
AS
RETURN
  SELECT CAST('2123-12-23T01:23:45.6789876' AS DATETIME2) AS Now;
GO
CREATE PROCEDURE Reports_CalculateReportDateRange_Tests.[test uses today if @StartDate is NULL]
AS
BEGIN
  EXEC tSQLt.FakeFunction 
         @FunctionName = 'Reports.MySysDateTime', 
         @FakeFunctionName = 'Reports_CalculateReportDateRange_Tests.[--> 2123-12-23T01:23:45.678987]';

  SELECT StartDate INTO #Actual FROM Reports.CalculateReportDateRange(NULL,7,'DAY');

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES('2123-12-23T01:23:45.6789876');

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual'; --<-- Why?
END;
GO

