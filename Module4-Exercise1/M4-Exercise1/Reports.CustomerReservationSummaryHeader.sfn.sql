IF OBJECT_ID('Reports.CustomerReservationSummaryHeader') IS NOT NULL DROP FUNCTION Reports.CustomerReservationSummaryHeader;
GO
CREATE FUNCTION Reports.CustomerReservationSummaryHeader(@StartDate DATE, @EndDate DATE)
RETURNS TABLE
AS
RETURN
  SELECT
      @StartDate AS StartDate,
      @EndDate AS EndDate,
      COUNT(DISTINCT C.CustomerId) AS TotalCustomerCount,
      COUNT(DISTINCT CASE WHEN R.BookingDate BETWEEN @StartDate AND @EndDate THEN R.CustomerId ELSE 0 END)-SIGN(COUNT(R.CustomerId)) ActiveCustomerCount,
      SUM(CASE WHEN R.BookingDate BETWEEN @StartDate AND @EndDate THEN 1 ELSE 0 END) AS ReservationCount,
      SUM(CASE WHEN R.BookingDate BETWEEN @StartDate AND @EndDate THEN 1.0 ELSE 0.0 END)/DATEDIFF(DAY,@StartDate,@EndDate) AvgDailyReservationCount
    FROM Booking.Customers AS C
    LEFT JOIN Booking.Reservations AS R
      ON R.CustomerId = C.CustomerId
GO
