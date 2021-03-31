@echo OFF
pushd "%~dp0"

echo ---------------------------------- TODO ----------------------------------
echo 4. Add run build script to tools menu
echo 5. get rid of red for download of tSQLt in curl
echo 6. Nice to have, in Module1Project build.sql, how can we list the files being read with :r?
echo.

echo - Installing Projects ------------------------------------------------
call "%~dp0\..\Module1Project\build.bat"
echo.

echo - Installing tSQLt ------------------------------------------------
call "%~dp0\..\tSQLt\build.bat"
echo.

echo - Creating list of tests ------------------------------------------------
if not exist "%~dp0\temp\" mkdir "%~dp0\temp\"
(for /r %%i in (*.class.sql) do @echo :r "%%i" & echo GO) >temp\installalltests.sql
type temp\installalltests.sql
echo.

echo - Deploying tests --------------------------------------------------------
"%SQLCMD_HOME%\sqlcmd.exe" -i "%~dp0\build.sql" -S localhost,41433 -U sa -P Welcome1!
echo.

popd
