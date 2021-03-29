:!! echo download tSQLt from https://tsqlt.org/download/tsqlt/
:!! curl https://tsqlt.org/download/tsqlt/ -o $(DEMOSOLUTIONPATH)\tSQLt\tSQLt.zip
:!! tar -xf $(DEMOSOLUTIONPATH)\tSQLt\tSQLt.zip -C $(DEMOSOLUTIONPATH)\tSQLt\

/*-- Run this once per server with sysadmin permissions
:r $(DEMOSOLUTIONPATH)\tSQLt\PrepareServer.sql
GO
--*/

:r $(DEMOSOLUTIONPATH)\tSQLt\tSQLt.class.sql
GO