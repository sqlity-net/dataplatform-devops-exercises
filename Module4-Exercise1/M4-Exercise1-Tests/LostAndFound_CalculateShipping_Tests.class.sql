EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test returns $10 if hotel and customer are located in the same state]
AS
BEGIN
  DECLARE @CustomerState CHAR(2) = 'VA';
  DECLARE @HotelState CHAR(2) = 'VA';

  DECLARE @ActualShippingCost NUMERIC(10,2);

  SET @ActualShippingCost = LostAndFound.CalculateShipping(@HotelState, @CustomerState);

  EXEC tSQLt.AssertEquals @Expected = 10.0, @Actual = @ActualShippingCost;
  
END;
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test returns $25 if hotel and customer are located in the different states]
AS
BEGIN
  DECLARE @CustomerState CHAR(2) = 'PA';
  DECLARE @HotelState CHAR(2) = 'VA';

  DECLARE @ActualShippingCost NUMERIC(10,2);

  SET @ActualShippingCost = LostAndFound.CalculateShipping(@HotelState, @CustomerState);

  EXEC tSQLt.AssertEquals @Expected = 25.0, @Actual = @ActualShippingCost;
  
END;
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test returns $25 if hotel is in MA and customer is in VA]
AS
BEGIN
  DECLARE @CustomerState CHAR(2) = 'VA';
  DECLARE @HotelState CHAR(2) = 'MA';

  DECLARE @ActualShippingCost NUMERIC(10,2);

  SET @ActualShippingCost = LostAndFound.CalculateShipping(@HotelState, @CustomerState);

  EXEC tSQLt.AssertEquals @Expected = 25.0, @Actual = @ActualShippingCost;
  
END;
GO
