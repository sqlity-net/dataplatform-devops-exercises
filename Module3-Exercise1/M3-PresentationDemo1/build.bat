@echo OFF
pushd "%~dp0"

echo - Installing Exercise Projects -----------------------------------------------------
call "%~dp0\..\M3-Exercise1-Tests\build.bat" "%~1" "%~2" "%~3"
echo.

echo - Installing Demo Projects ---------------------------------------------------------

echo - Creating list of Demo Tests ------------------------------------------------------
if not exist "%~dp0\temp\" mkdir "%~dp0\temp\"
(for /r %%i in (*.class.sql) do @echo :r "%%i" & echo GO) >temp\installalltests.sql
type temp\installalltests.sql
echo.

echo - Deploying Demo Project and Tests -------------------------------------------------
"%SQLCMD_HOME%\sqlcmd.exe" -i "%~dp0\build.sql" -S "%~1" %~2 -d "%~3"
echo.

popd
