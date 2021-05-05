CREATE VIEW Marketing.EmailList AS
SELECT 
	BC.CustomerId, 
	BC.FirstName, 
	BC.LastName, 
	BC.Email, 
	BC.OptIn,
	COUNT(BR.ReservationId) AS CountReservations
FROM Booking.Customers BC
LEFT JOIN Booking.Reservations BR 
	ON BC.CustomerId = BR.CustomerId
WHERE OptIn = 1
GROUP BY
	BC.CustomerId, 
	BC.FirstName, 
	BC.LastName, 
	BC.Email, 
	BC.OptIn