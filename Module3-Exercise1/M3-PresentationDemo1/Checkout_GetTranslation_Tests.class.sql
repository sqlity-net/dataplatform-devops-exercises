EXEC tSQLt.NewTestClass 'Checkout_GetTranslation_Tests';
GO
CREATE PROCEDURE Checkout_GetTranslation_Tests.[test returns correct translation for Geschirrspülmittel]
AS
BEGIN
  
  DECLARE @Translation NVARCHAR(MAX);

  SET @Translation = Checkout.GetTranslation('dish soap');
  
  EXEC tSQLt.AssertEqualsString @Expected = 'Geschirrspülmittel', @Actual = @Translation;
END;
GO
