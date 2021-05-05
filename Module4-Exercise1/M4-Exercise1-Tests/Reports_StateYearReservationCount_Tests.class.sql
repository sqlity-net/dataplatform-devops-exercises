EXEC tSQLt.NewTestClass 'Reports_StateYearReservationCount_Tests';
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test no reservation results in 0 rows]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';

  SELECT * INTO #Actual FROM Reports.StateYearReservationCount;

  EXEC tSQLt.AssertEmptyTable @TableName = 'Reports.StateYearReservationCount';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test a single reservation results in 1 row] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId)
       VALUES(1101);
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA')

  SELECT ReservationCount INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES(1);

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test returns ReservationState and ReservationYear] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId, ReservationDate)
       VALUES(1101, '2021-04-21');
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA')

  SELECT ReservationYear, ReservationState INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES(2021,'AA');

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test returns the correct count for multiple reservations in the same Hotel and ReservationYear] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId, ReservationDate)
       VALUES(1101, '2021-04-21'),(1101, '2021-04-21'),(1101, '2021-05-21');
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA')

  SELECT ReservationCount INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES(3);

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test returns count by year] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId, ReservationDate)
       VALUES(1101, '2021-04-21'),(1101, '2021-04-21'),(1101, '1999-01-01');
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA')

  SELECT ReservationYear, ReservationCount INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES(2021,2),(1999,1);

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test returns count by state] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId, ReservationDate)
       VALUES(1101, '2021-04-21'),(1102, '2021-04-21'),(1102, '2021-04-21');
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA'),(1102,'BB');

  SELECT ReservationState, ReservationCount INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES('AA',1),('BB',2);

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
CREATE PROCEDURE Reports_StateYearReservationCount_Tests.[test returns count by state, even with multiple hotels in a state] 
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName = 'Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Booking.Reservations(HotelId, ReservationDate)
       VALUES(1101, '2021-04-21'),(1102, '2021-04-21'),(1102, '2021-04-21');
  INSERT INTO Vendors.Hotels(HotelId, HotelState)
       VALUES(1101,'AA'),(1102,'AA');

  SELECT ReservationState, ReservationCount INTO #Actual FROM Reports.StateYearReservationCount;

  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
      VALUES('AA',3);

  EXEC tSQLt.AssertEqualsTable @Expected='#Expected', @Actual='#Actual';
END;
GO
