@echo OFF
pushd "%~dp0"

echo download tSQLt from https://tsqlt.org/download/tsqlt/
if not exist "%~dp0\temp\" mkdir "%~dp0\temp\"
curl https://tsqlt.org/download/tsqlt/ -o "%~dp0\temp\tSQLt.zip"
tar -xf "%~dp0\temp\tSQLt.zip" -C "%~dp0\temp\\"

"%SQLCMD_HOME%\sqlcmd.exe" -i "%~dp0\build.sql" -S "%~1" %~2 -d "%~3"

popd