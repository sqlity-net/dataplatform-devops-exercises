:r Checkout.schema.sql
GO

:r Checkout.GetDiscount.sfn.sql
GO

:r temp\installalltests.sql
GO

EXEC tSQLt.RunAll;
GO