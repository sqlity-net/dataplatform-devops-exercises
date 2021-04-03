@echo OFF
pushd "%~dp0"

echo ---------------------------------- TODO ----------------------------------
echo * [Nice to have] In Module1Project build.sql, how can we list the files being read with :r?
echo.

echo - Installing Projects ------------------------------------------------
call "%~dp0\..\M1-Exercise1\build.bat" "%~1" "%~2" "%~3"
echo.

echo - Installing tSQLt ------------------------------------------------
call "%~dp0\..\tSQLt\build.bat" "%~1" "%~2" "%~3"
echo.

echo - Creating list of tests ------------------------------------------------
if not exist "%~dp0\temp\" mkdir "%~dp0\temp\"
(for /r %%i in (*.class.sql) do @echo :r "%%i" & echo GO) >temp\installalltests.sql
type temp\installalltests.sql
echo.

echo - Deploying tests --------------------------------------------------------
"%SQLCMD_HOME%\sqlcmd.exe" -i "%~dp0\build.sql" -S "%~1" %~2 -d "%~3"
echo.

popd
