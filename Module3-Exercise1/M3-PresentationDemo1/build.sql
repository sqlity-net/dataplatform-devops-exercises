:r Checkout.schema.sql
GO

:r Checkout.GetTranslation.sfn.sql
GO

:r temp\installalltests.sql
GO

EXEC tSQLt.RunAll;
GO