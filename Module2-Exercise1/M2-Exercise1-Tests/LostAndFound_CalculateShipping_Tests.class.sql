EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test shipping cost is 10 when state is Alberta]
AS
BEGIN
  DECLARE @ShippingCost NUMERIC(10,2);
  
  SET @ShippingCost = (SELECT shipping_rates FROM LostAndFound.GetShippingCost('ALBERTA'));

  EXEC tSQLt.AssertEquals @Expected = 10.00, @Actual = @ShippingCost;
END;
GO
CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test shipping cost is 25 when state is not Alberta]
AS
BEGIN
  DECLARE @ShippingCost NUMERIC(10,2);
  
  SET @ShippingCost = (SELECT shipping_rates FROM LostAndFound.GetShippingCost('NOTALBERTA'));

  EXEC tSQLt.AssertEquals @Expected = 25.00, @Actual = @ShippingCost;
END;
GO