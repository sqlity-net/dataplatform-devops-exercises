EXEC tSQLt.NewTestClass 'Reports_HotelReservationCount_Tests';
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test returns no rows if no hotels]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName='Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';

  SELECT * INTO #Actual FROM Reports.HotelReservationCount;

  EXEC tSQLt.AssertEmptyTable @TableName = '#Actual';
END;
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test returns single hotel with no reservation]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName='Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Vendors.Hotels(HotelId,Name,HotelState)
       VALUES(1001,'Hotel1001','AA');

  SELECT HotelId, Name, HotelState, ReservationCount INTO #Actual FROM Reports.HotelReservationCount;
  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES(1001,'Hotel1001','AA',0);

  EXEC tSQLt.AssertEqualsTable @Expected = '#Expected', @Actual = '#Actual';
END;
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test returns multiple hotels with no reservations]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName='Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Vendors.Hotels(HotelId,Name,HotelState)
       VALUES(1001,'Hotel1001','AA'),(1002,'Hotel1002','BB'),(1003,'Hotel1003','CC');

  SELECT HotelId, Name, HotelState, ReservationCount INTO #Actual FROM Reports.HotelReservationCount;
  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES(1001,'Hotel1001','AA',0),(1002,'Hotel1002','BB',0),(1003,'Hotel1003','CC',0);

  EXEC tSQLt.AssertEqualsTable @Expected = '#Expected', @Actual = '#Actual';
END;
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test returns multiple hotels with differing reservation counts]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName='Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Vendors.Hotels(HotelId,Name,HotelState)
       VALUES(1001,'Hotel1001','AA'),(1002,'Hotel1002','BB'),(1003,'Hotel1003','CC');
  INSERT INTO Booking.Reservations(HotelId)
       VALUES(1001),(1003),(1003),(1003);

  SELECT HotelId, Name, HotelState, ReservationCount INTO #Actual FROM Reports.HotelReservationCount;
  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES(1001,'Hotel1001','AA',1),(1002,'Hotel1002','BB',0),(1003,'Hotel1003','CC',3);

  EXEC tSQLt.AssertEqualsTable @Expected = '#Expected', @Actual = '#Actual';
END;
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test returns one additional row for all reservations with a NULL HotelId]
AS
BEGIN
  EXEC tSQLt.FakeTable @TableName='Booking.Reservations';
  EXEC tSQLt.FakeTable @TableName = 'Vendors.Hotels';
  INSERT INTO Vendors.Hotels(HotelId,Name,HotelState)
       VALUES(1001,'Hotel1001','AA');
  INSERT INTO Booking.Reservations(HotelId)
       VALUES(1001),(NULL),(NULL),(NULL);

  SELECT HotelId, Name, HotelState, ReservationCount INTO #Actual FROM Reports.HotelReservationCount;
  SELECT TOP(0) A.* INTO #Expected FROM #Actual A RIGHT JOIN #Actual X ON 1=0;
  INSERT INTO #Expected
  VALUES(1001,'Hotel1001','AA',1),(NULL,NULL,NULL,3);

  EXEC tSQLt.AssertEqualsTable @Expected = '#Expected', @Actual = '#Actual';
END;
GO