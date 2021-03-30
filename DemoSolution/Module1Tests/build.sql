:!! echo ---------------------------------- TODO ----------------------------------
:!! echo 4. Add run build script to tools menu
:!! echo 5. get rid of red for download of tSQLt in curl
:!! echo 6. Nice to have, in Module1Project build.sql, how can we list the files being read with :r?
:!! echo.
:!! echo.
GO
dddd
:!! echo  - Call Build ------------------------------------------------------------
:r $(DEMOSOLUTIONPATH)\Module1Project\build.sql
GO

:!! echo.
:!! echo  - Downloading and installing tSQLt --------------------------------------
:r $(DEMOSOLUTIONPATH)\tSQLt\build.sql
GO

:!! echo.
:!! echo  - Installing all tests --------------------------------------------------
:!! if not exist "$(DEMOSOLUTIONPATH)\Module1Tests\temp\" mkdir "$(DEMOSOLUTIONPATH)\Module1Tests\temp\"
:!! pushd $(DEMOSOLUTIONPATH)\Module1Tests & (for /r %i in (*.class.sql) do @echo :r "%~i" & echo GO) >temp\installalltests.sql & popd
:r $(DEMOSOLUTIONPATH)\Module1Tests\installalltests.sql
GO

