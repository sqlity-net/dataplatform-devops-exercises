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
  HotelId INT,
  BookingDate DATETIME2,
  StartDate DATE,
  StayLengthInDays INT,
  ReservationDate DATE,
  AdditionalColumns BINARY(200),
  CONSTRAINT [Booking.Reservations:FK-->Booking.Customers] 
    FOREIGN KEY (CustomerId) REFERENCES Booking.Customers(CustomerId),
  CONSTRAINT [Booking.Reservations:FK-->Vendors.Hotels]
    FOREIGN KEY (HotelId) REFERENCES Vendors.Hotels(HotelId)
);
GO
