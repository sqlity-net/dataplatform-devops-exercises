CREATE OR ALTER VIEW Marketing.EmailList
AS
SELECT C.CustomerId, C.FirstName, C.LastName, C.Email, C.OptIn, ISNULL(R.ReservationCount,0) ReservationCount
  FROM Booking.Customers AS C
  LEFT JOIN (SELECT CustomerId, COUNT(1) ReservationCount FROM Booking.Reservations GROUP BY CustomerId) AS R
    ON R.CustomerId = C.CustomerId
 WHERE C.OptIn = 1;
 GO
