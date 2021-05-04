EXEC tSQLt.NewTestClass 'LostAndFound_CalculateHandling_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test returns 0 if 10001 rewards]
AS
BEGIN
  DECLARE @ActualHandlingCost NUMERIC(10,2);

  SET @ActualHandlingCost = LostAndFound.CalculateHandling(10001);

  EXEC tSQLt.AssertEquals @Expected = 0.0, @Actual = @ActualHandlingCost;
END;
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test returns $37 if 9999 rewards]
AS
BEGIN
  DECLARE @ActualHandlingCost NUMERIC(10,2);

  SET @ActualHandlingCost = LostAndFound.CalculateHandling(9999);

  EXEC tSQLt.AssertEquals @Expected = 37.0, @Actual = @ActualHandlingCost;
END;
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test returns 0 if 10000 rewards]
AS
BEGIN
  DECLARE @ActualHandlingCost NUMERIC(10,2);

  SET @ActualHandlingCost = LostAndFound.CalculateHandling(10000);

  EXEC tSQLt.AssertEquals @Expected = 0.0, @Actual = @ActualHandlingCost;
END;
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test returns $37 if not part of rewards program (rewards are NULL)]
AS
BEGIN
  DECLARE @ActualHandlingCost NUMERIC(10,2);

  SET @ActualHandlingCost = LostAndFound.CalculateHandling(NULL);

  EXEC tSQLt.AssertEquals @Expected = 37.0, @Actual = @ActualHandlingCost;
END;
GO
