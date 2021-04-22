EXEC tSQLt.NewTestClass 'HandlingCosts_Tests';
GO

CREATE PROCEDURE HandlingCosts_Tests.[test customer has more than 10000]
AS
BEGIN
	DECLARE @ExpectedHandlingCost INT;
	DECLARE @ActualHandlingCost INT;

	SELECT @ActualHandlingCost = (SELECT HandlingCosts.CalculateHandling(20000));

	SET @ExpectedHandlingCost = 0;

	EXEC tSQLt.AssertEquals @ExpectedHandlingCost, @ActualHandlingCost;
END
GO

CREATE PROCEDURE HandlingCosts_Tests.[test customer has less than 10000]
AS
BEGIN
	DECLARE @ExpectedHandlingCost INT;
	DECLARE @ActualHandlingCost INT;

	SELECT @ActualHandlingCost = (SELECT HandlingCosts.CalculateHandling(500));

	SET @ExpectedHandlingCost = 37;

	EXEC tSQLt.AssertEquals @ExpectedHandlingCost, @ActualHandlingCost;
END
GO