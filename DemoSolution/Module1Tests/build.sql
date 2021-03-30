:!! echo ---------------------------------- TODO ----------------------------------
:!! echo 2. move unzipped tSQLt artifacts to subfolder in the tSQLt project in the Demo Solution
:!! echo 3. Add explanatory print statements so that we know what is going on during the build
:!! echo 4. Add run build script to tools menu
:!! echo  -------------------------------------------------------------------------

:r $(DEMOSOLUTIONPATH)\Module1Project\build.sql
GO

:!! pushd $(DEMOSOLUTIONPATH)\Module1Tests & (for /r %i in (*.class.sql) do @echo :r "%~i" & echo GO) >installalltests.sql & popd

:r $(DEMOSOLUTIONPATH)\tSQLt\build.sql
GO

:r $(DEMOSOLUTIONPATH)\Module1Tests\installalltests.sql
GO