DROP TABLE IF EXISTS Vendors.Hotels;
DROP SEQUENCE IF EXISTS Vendors.HotelSequence;
GO
CREATE SEQUENCE Vendors.HotelSequence AS INT START WITH 0 INCREMENT BY 1;
GO
CREATE TABLE Vendors.Hotels
(
  HotelId INT 
    CONSTRAINT Vendors_Hotels_HotelId_DF DEFAULT NEXT VALUE FOR Vendors.HotelSequence
    CONSTRAINT Vendors_Hotels_PK PRIMARY KEY CLUSTERED,
  Name NVARCHAR(400),
  HotelState CHAR(2) NOT NULL,
  CostPerNight NUMERIC(10,2),
  AdditionalColumns BINARY(200)

);
GO