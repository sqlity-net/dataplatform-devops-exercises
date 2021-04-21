CREATE OR ALTER PROCEDURE DatabaseMigrations.Version0002
AS
BEGIN
  ALTER TABLE Booking.Reservations 
    ADD CONSTRAINT [Booking.Reservations:FK-->Booking.Customers] 
    FOREIGN KEY (CustomerId) REFERENCES Booking.Customers(CustomerId);
END;
GO
