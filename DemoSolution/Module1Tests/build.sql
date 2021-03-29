:!! echo ---------------------------------- TODO ----------------------------------
:!! echo 1. add ":r" in front of file names in installalltests.sql file
:!! echo 2. move unzipped tSQLt artifacts to subfolder in the tSQLt project in the Demo Solution
:!! echo 3. Add explanatory print statements so that we know what is going on during the build
:!! echo 4. Add run build script to tools menu
:!! echo  -------------------------------------------------------------------------

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