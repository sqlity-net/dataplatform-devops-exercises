DROP FUNCTION IF EXISTS LostAndFound.GetShippingCost;
GO
CREATE FUNCTION LostAndFound.GetShippingCost(@StateProvince NVARCHAR(100))
RETURNS TABLE
AS
RETURN
  SELECT CASE WHEN lower(@StateProvince) like lower('Alberta') THEN 10.00 ELSE 25.00 END shipping_rates;
GO


