:!! echo ----------------------------- PLEASE READ --------------------------------
:!! echo This batch script requires two Environment Variables.
:!! echo Please set them using SETX in the cmd line and then restart SSMS, eg "SETX MODULE1DEMODB module1demo"
:!! echo You must set both MODULE1DEMODB, the name of the database, and DEMOSOLUTIONPATH, the path to the SSMS Solution.

:!! echo.
:!! echo  - Building and Deploying Project ----------------------------------------

:r $(DEMOSOLUTIONPATH)\Module1Project\create.module1demo.db.sql
GO

:r $(DEMOSOLUTIONPATH)\Module1Project\create.dbo.person.tbl.sql
GO

