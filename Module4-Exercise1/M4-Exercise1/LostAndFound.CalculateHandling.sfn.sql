IF OBJECT_ID('LostAndFound.CalculateHandling') IS NOT NULL DROP FUNCTION LostAndFound.CalculateHandling;
GO

CREATE FUNCTION LostAndFound.CalculateHandling
(
  @RewardsBalance INT
)
RETURNS NUMERIC(10,2)
AS
BEGIN
  RETURN CASE WHEN ISNULL(@RewardsBalance,0) < 10000 THEN 37.0 ELSE 0 END;
END;
GO
