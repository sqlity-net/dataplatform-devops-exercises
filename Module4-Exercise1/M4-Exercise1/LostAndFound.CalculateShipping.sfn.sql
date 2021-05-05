IF OBJECT_ID('LostAndFound.CalculateShipping') IS NOT NULL DROP FUNCTION LostAndFound.CalculateShipping;
GO

CREATE FUNCTION LostAndFound.CalculateShipping
(
  @HotelState CHAR(2),
  @CustomerState CHAR(2)
)
RETURNS NUMERIC(10,2)
AS
BEGIN
  RETURN CASE WHEN @CustomerState = @HotelState THEN 10.0 ELSE 25.0 END;
END;
GO
