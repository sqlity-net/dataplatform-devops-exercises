USE M3E4Db;   
GO  
EXEC tSQLt.NewTestClass 'Reports_HotelReservationCount_Tests';
GO
CREATE PROCEDURE Reports_HotelReservationCount_Tests.[test reversation count] 
AS
BEGIN
	IF OBJECT_ID(N'ActualHotelReservation') IS NOT NULL DROP TABLE ActualHotelReservation;
	IF OBJECT_ID(N'ExpectedHotelReservationt') IS NOT NULL DROP TABLE ExpectedHotelReservationt;

	EXEC tSQLt.FakeTable 'Vendors.Hotels';
	EXEC tSQLt.FakeTable 'Booking.Reservations'
	EXEC tSQLt.FakeTable 'Booking.Customers'
	
	INSERT INTO Booking.Customers ([CustomerId],[FirstName],[LastName])
						   VALUES (01, 'Kapo', 'ng'),
								  (02, 'Stephy', 'liao');

	INSERT INTO Vendors.Hotels ([HotelId],[Name],[HotelState],[CostPerNight],[AdditionalColumns])
						   VALUES (1, 'The Westin Edmonton', 'AB',159, 1),
						   (2, 'Fantasyland Hotel & Resort', 'AB',178, 2);

	INSERT INTO Booking.Reservations ([ReservationId],[CustomerId],[HotelId])
						      VALUES (011, 01,1), (012, 01,1), (013, 02,2);

	SELECT [HotelId],[HotelName],[HotelState],[ReservationCount]
	INTO ActualEmailList
	FROM [M3E4Db].[dbo].[HotelReservationCount];

	SELECT 
		1 AS HotelId,
		'The Westin Edmonton' AS HotelName,
		'AB' AS HotelState,
		2 AS ReservationCount
	INTO ExpectedEmailList;

	EXEC tSQLt.AssertEqualsTable ExpectedHotelReservationt,ActualHotelReservation;
END
GO
