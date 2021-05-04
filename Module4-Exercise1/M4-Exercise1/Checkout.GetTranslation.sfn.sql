DROP FUNCTION IF EXISTS Checkout.GetTranslation;
GO
CREATE FUNCTION Checkout.GetTranslation(@InputText NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
  RETURN 'Geschirrspülmittel';
END;
GO