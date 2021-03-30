:!! echo download tSQLt from https://tsqlt.org/download/tsqlt/
:!! if not exist "$(DEMOSOLUTIONPATH)\tSQLt\temp\" mkdir "$(DEMOSOLUTIONPATH)\tSQLt\temp\"
:!! curl https://tsqlt.org/download/tsqlt/ -o "$(DEMOSOLUTIONPATH)\tSQLt\temp\tSQLt.zip"
:!! tar -xf "$(DEMOSOLUTIONPATH)\tSQLt\temp\tSQLt.zip" -C "$(DEMOSOLUTIONPATH)\tSQLt\temp\\"


/*-- Run this once per server with sysadmin permissions
:r $(DEMOSOLUTIONPATH)\tSQLt\temp\PrepareServer.sql
GO
--*/

:r $(DEMOSOLUTIONPATH)\tSQLt\temp\tSQLt.class.sql
GO

