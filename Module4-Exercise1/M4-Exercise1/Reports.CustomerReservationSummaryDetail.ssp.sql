IF OBJECT_ID('Reports.CustomerReservationSummaryDetail') IS NOT NULL DROP PROCEDURE Reports.CustomerReservationSummaryDetail;
GO
CREATE PROCEDURE Reports.CustomerReservationSummaryDetail
  @StartDate DATE,
  @EndDate DATE
AS
BEGIN
  SELECT 
      CRL.CustomerId,
      COUNT(1) TotalReservationCount,
      SUM(CASE WHEN CRL.BookingDate BETWEEN @StartDate AND @EndDate THEN 1 ELSE 0 END) ReservationsInInterval,
      SUM(CRL.ReservationTotal) TCV,
      SUM(CASE WHEN CRL.BookingDate BETWEEN @StartDate AND @EndDate THEN CRL.ReservationTotal ELSE 0 END) ReservationTotalInInterval,
      MIN(CRL.BookingDate) FirstReservation,
      MIN(CASE WHEN CRL.BookingDate BETWEEN @StartDate AND @EndDate THEN CRL.BookingDate ELSE @EndDate END) FirstReservationInInterval,
      MAX(CRL.BookingDate) LastReservation
    INTO #CustomerReservationCounts
    FROM Reports.CustomerReservationList CRL
   GROUP BY CRL.CustomerId;

  SELECT 
      C.CustomerId,
      C.FirstName,
      C.LastName,
      C.JoinDate,
      CRC.TotalReservationCount,
      CRC.ReservationsInInterval,
      CRC.TCV,
      CRC.ReservationTotalInInterval,
      CRC.FirstReservation,
      CRC.FirstReservationInInterval,
      CRC.LastReservation
    FROM #CustomerReservationCounts AS CRC
    JOIN Booking.Customers C
      ON CRC.CustomerId = C.CustomerId
   WHERE CRC.ReservationsInInterval > 0;
END;
GO
--P:Filter Late, NSFR --> M7D
GO
