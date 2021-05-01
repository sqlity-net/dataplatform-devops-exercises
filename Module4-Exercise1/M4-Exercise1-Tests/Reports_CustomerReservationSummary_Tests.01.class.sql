EXEC tSQLt.NewTestClass 'CustomerReservationSummaryTests';
GO
CREATE PROCEDURE CustomerReservationSummaryTests.[test Passes @StartDate and calculated enddate to Reports.CustomerReservationSummaryDetail]
AS
BEGIN
  EXEC tSQLt.SpyProcedure @ProcedureName = 'Reports.CustomerReservationSummaryDetail';
  
  EXEC Reports.CustomerReservationSummary @StartDate = '2019-03-11', @LengthInDays = 7;

  SELECT StartDate, EndDate 
    INTO #Actual
    FROM Reports.CustomerReservationSummaryDetail_SpyProcedureLog;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES('2019-03-11','2019-03-17');

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO
