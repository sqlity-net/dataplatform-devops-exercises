:r $(DEMOSOLUTIONPATH)\Module1Project\build.sql
GO

:!! del $(DEMOSOLUTIONPATH)\Module1Tests\installalltests.sql >nul 2>&1
:OUT $(DEMOSOLUTIONPATH)\Module1Tests\installalltests.sql
:!! DIR $(DEMOSOLUTIONPATH)\Module1Tests\*.class.sql /b/o
:OUT stdout
GO

:r $(DEMOSOLUTIONPATH)\tSQLt\build.sql
GO

:r $(DEMOSOLUTIONPATH)\Module1Tests\installalltests.sql