EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test shipping cost for same states]
AS
BEGIN
	DECLARE @ExpectedShippingCost INT;
	DECLARE @ActualShippingCost INT;

	SELECT @ActualShippingCost = (SELECT LostAndFound.CalculateShipping('AL', 'AL'));

	SET @ExpectedShippingCost = 10;

	EXEC tSQLt.AssertEquals @ExpectedShippingCost, @ActualShippingCost;
END
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test shopping cost for different states]
AS
BEGIN
	DECLARE @ExpectedShippingCost INT;
	DECLARE @ActualShippingCost INT;

	SELECT @ActualShippingCost = (SELECT LostAndFound.CalculateShipping('NY', 'CA'));

	SET @ExpectedShippingCost = 25;

	EXEC tSQLt.AssertEquals @ExpectedShippingCost, @ActualShippingCost;
END
GO