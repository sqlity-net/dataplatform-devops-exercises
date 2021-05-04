CREATE OR ALTER VIEW Reports.HotelReservationCount
AS
SELECT H.HotelId, H.Name, H.HotelState, ISNULL(R.ReservationCount,0) ReservationCount
  FROM Vendors.Hotels AS H
  FULL JOIN (SELECT COUNT(1) ReservationCount, HotelId FROM Booking.Reservations GROUP BY HotelId) AS R
    ON R.HotelId = H.HotelId;