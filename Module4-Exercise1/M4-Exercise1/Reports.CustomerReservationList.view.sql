IF OBJECT_ID('Reports.CustomerReservationList') IS NOT NULL DROP VIEW Reports.CustomerReservationList;
GO
CREATE VIEW Reports.CustomerReservationList
AS
SELECT 
    R.CustomerId,
    R.BookingDate,
    R.StartDate,
    R.StayLengthInDays,
    H.HotelId,
    H.Name AS HotelName,
    R.StayLengthInDays*H.CostPerNight AS ReservationTotal
  FROM Booking.Reservations AS R
  JOIN Vendors.Hotels H
    ON R.HotelId = H.HotelId;
GO
