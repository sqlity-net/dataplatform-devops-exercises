EXEC tSQLt.NewTestClass 'LostAndFound_CalculateHandling_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test handling cost is 0 when points equal 10000]
AS
BEGIN
  DECLARE @HandlingCost NUMERIC(10,2);
  
  SET @HandlingCost = (SELECT handling_fee FROM LostAndFound.CalculateHandling(10000));

  EXEC tSQLt.AssertEquals @Expected = 0, @Actual = @HandlingCost;
END;
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test handling cost is 0 when points > 10000]
AS
BEGIN
  DECLARE @HandlingCost NUMERIC(10,2);
  
  SET @HandlingCost = (SELECT handling_fee FROM LostAndFound.CalculateHandling(20000));

  EXEC tSQLt.AssertEquals @Expected = 0, @Actual = @HandlingCost;
END;
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test handling cost is 37 when points < 10000]
AS
BEGIN
  DECLARE @HandlingCost NUMERIC(10,2);
  
  SET @HandlingCost = (SELECT handling_fee FROM LostAndFound.CalculateHandling(9999));

  EXEC tSQLt.AssertEquals @Expected = 37, @Actual = @HandlingCost;
END;
GO