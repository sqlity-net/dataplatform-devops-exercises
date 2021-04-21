DROP FUNCTION IF EXISTS LostAndFound.CalculateHandling;
GO
CREATE FUNCTION LostAndFound.CalculateHandling(@RewardPoints numeric(10,2))
RETURNS TABLE
AS
RETURN
  SELECT CASE WHEN @RewardPoints >= 10000 THEN 0.0 ELSE 37.00 END handling_fee;
GO


