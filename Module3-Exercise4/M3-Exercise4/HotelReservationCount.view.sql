USE M3E4Db ;   
GO  
CREATE OR ALTER VIEW HotelReservationCount
AS  
SELECT vh.HotelId, vh.Name HotelName, vh.HotelState, count(br.ReservationId) ReservationCount
FROM Vendors.Hotels vh JOIN Booking.Reservations br on
vh.HotelId = br.HotelId
Group by vh.HotelId,vh.Name, vh.HotelState
GO  