:r Reports.schema.sql
GO

:r Reports.TopNCustomers.sfn.sql
GO

:r temp\installalltests.sql
GO

EXEC tSQLt.RunAll;
GO