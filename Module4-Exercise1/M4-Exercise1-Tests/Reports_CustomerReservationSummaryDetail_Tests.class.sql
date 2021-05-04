EXEC tSQLt.NewTestClass 'Reports_CustomerReservationSummaryDetail_Tests';
GO
CREATE PROCEDURE Reports_CustomerReservationSummaryDetail_Tests.CreateCRSDResultsTable
AS
BEGIN
  DROP TABLE IF EXISTS Reports_CustomerReservationSummaryDetail_Tests.CRSDResults;
  CREATE TABLE Reports_CustomerReservationSummaryDetail_Tests.CRSDResults(
      CustomerId INT,
      FirstName NVARCHAR(200),
      LastName NVARCHAR(200),
      JoinDate DATE,
      TotalReservationCount INT,
      ReservationsInInterval INT,
      TCV NUMERIC(12,2),
      ReservationTotalInInterval NUMERIC(12,2),
      FirstReservation DATE,
      FirstReservationInInterval DATE,
      LastReservation DATE
    );
END;
GO
/*-->-- Not the first test I'd write. --<--*/
GO
CREATE PROCEDURE Reports_CustomerReservationSummaryDetail_Tests.[test Includes FirstName and LastName of a Customer]
AS
BEGIN
  EXEC Reports_CustomerReservationSummaryDetail_Tests.CreateCRSDResultsTable;
  EXEC tSQLt.FakeTable @TableName = 'Booking.Customers';
  EXEC tSQLt.FakeTable @TableName = 'Reports.CustomerReservationList';

  INSERT INTO Booking.Customers(CustomerId,FirstName,LastName)
  VALUES(1001,'FN1001','LN1001');

  INSERT INTO Reports.CustomerReservationList(CustomerId,BookingDate)
  VALUES(1001,'2019-03-15');

  INSERT INTO Reports_CustomerReservationSummaryDetail_Tests.CRSDResults
  EXEC Reports.CustomerReservationSummaryDetail @StartDate = '2019-03-11', @EndDate = '2019-03-17';

  SELECT CustomerId, FirstName, LastName
    INTO #Actual
    FROM Reports_CustomerReservationSummaryDetail_Tests.CRSDResults; /*--<-- Why?--*/

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;

  INSERT INTO #Expected
  VALUES(1001,'FN1001','LN1001'); /*--<-- Why not SELECT CustomerId,FirstName,LastName FROM Booking.Customers?--*/

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO
