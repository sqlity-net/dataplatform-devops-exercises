EXEC tSQLt.NewTestClass 'Reports_CustomerReservationSummaryHeader_Tests';
GO
CREATE PROCEDURE Reports_CustomerReservationSummaryHeader_Tests.[test returns correct customer count for no customers]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Customers';
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';

  SELECT CRSH.TotalCustomerCount INTO #Actual FROM Reports.CustomerReservationSummaryHeader('2019-03-11','2019-03-17') CRSH;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  
  INSERT INTO #Expected
  VALUES(0);

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO

GO
CREATE PROCEDURE Reports_CustomerReservationSummaryHeader_Tests.[test returns correct customer count for single customer]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Customers';
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  INSERT INTO Booking.Customers(CustomerId)
  VALUES(1001);--<-- Don't use CustomerId = 1

  SELECT CRSH.TotalCustomerCount INTO #Actual FROM Reports.CustomerReservationSummaryHeader('2019-03-11','2019-03-17') CRSH;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  
  INSERT INTO #Expected
  VALUES(1);

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO

GO
CREATE PROCEDURE Reports_CustomerReservationSummaryHeader_Tests.[test returns correct customer count for several customers with no reservations]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Customers';
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  INSERT INTO Booking.Customers(CustomerId)
  VALUES(1001),(1002),(1003);

  SELECT CRSH.TotalCustomerCount INTO #Actual FROM Reports.CustomerReservationSummaryHeader('2019-03-11','2019-03-17') CRSH;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  
  INSERT INTO #Expected
  VALUES(3);

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO

GO
CREATE PROCEDURE Reports_CustomerReservationSummaryHeader_Tests.[test returns correct customer count for several customers with reservations]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Customers';
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  INSERT INTO Booking.Customers(CustomerId)
  VALUES(1001),(1002),(1003);
  INSERT INTO Booking.Reservations(CustomerId)
  VALUES(1002),(1002),(1002),(1002),(1003);

  SELECT CRSH.TotalCustomerCount INTO #Actual FROM Reports.CustomerReservationSummaryHeader('2019-03-11','2019-03-17') CRSH;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  
  INSERT INTO #Expected
  VALUES(3);

  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO
