IF OBJECT_ID('Reports.TopNCustomers') IS NOT NULL DROP FUNCTION Reports.TopNCustomers;
GO
CREATE FUNCTION Reports.TopNCustomers(@TopN INT)
RETURNS TABLE
AS
RETURN
  SELECT TOP(@TopN) *
    FROM
    (
      SELECT R.CustomerId, COUNT(1) ReservationCount
        FROM Booking.Reservations AS R
       GROUP BY R.CustomerId
    )X
   ORDER BY X.ReservationCount DESC;
GO
