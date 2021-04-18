DROP TABLE IF EXISTS Booking.Reservations;
DROP SEQUENCE IF EXISTS Booking.ReservationSequence;
GO
CREATE SEQUENCE Booking.ReservationSequence AS INT START WITH 0 INCREMENT BY 1;
GO
CREATE TABLE Booking.Reservations
(
  ReservationId INT 
    CONSTRAINT [Booking.Reservations.ReservationId:DF] DEFAULT NEXT VALUE FOR Booking.ReservationSequence
    CONSTRAINT [Booking.Reservations:PK] PRIMARY KEY CLUSTERED,
  CustomerId INT,
  AdditionalColumns BINARY(200)
);