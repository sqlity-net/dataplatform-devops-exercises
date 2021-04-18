DROP TABLE IF EXISTS Booking.Customers;
DROP SEQUENCE IF EXISTS Booking.CustomerSequence;
GO
CREATE SEQUENCE Booking.CustomerSequence AS INT START WITH 0 INCREMENT BY 1;
GO
CREATE TABLE Booking.Customers
(
  CustomerId INT 
    CONSTRAINT Booking_Customers_CustomerId_DF DEFAULT NEXT VALUE FOR Booking.CustomerSequence
    CONSTRAINT Booking_Customers_PK PRIMARY KEY CLUSTERED,
  FirstName NVARCHAR(200),
  LastName NVARCHAR(200),
  JoinDate DATE,
  BirthDate DATE,
  GenderCd CHAR(1),
  RegionId INT,
  Email NVARCHAR(MAX),
  OptIn BIT,
  AdditionalColumns BINARY(200)
);
GO