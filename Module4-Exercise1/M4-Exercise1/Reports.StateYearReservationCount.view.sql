CREATE OR ALTER VIEW Reports.StateYearReservationCount
AS
  SELECT R.ReservationYear, H.HotelState ReservationState, SUM(R.ReservationCount) ReservationCount 
    FROM (SELECT HotelId, YEAR(ReservationDate) ReservationYear, COUNT(1) ReservationCount FROM Booking.Reservations GROUP BY HotelId, ReservationDate) AS R
    JOIN Vendors.Hotels AS H
      ON H.HotelId = R.HotelId
   GROUP BY R.ReservationYear,H.HotelState;