@echo OFF
pushd "%~dp0"

echo ----------------------------- PLEASE READ --------------------------------
echo This batch script requires one environment variables, "MODULE1DEMODB"
echo Please set them using SETX in the cmd line and then restart SSMS, eg "SETX MODULE1DEMODB module1demo"
echo You must set both MODULE1DEMODB, the name of the database, and DEMOSOLUTIONPATH, the path to the SSMS Solution.

if not defined MODULE1DEMODB set MODULE1DEMODB=module1demodb

echo.
echo - Building and Deploying Project ----------------------------------------
"%SQLCMD_HOME%\sqlcmd.exe" -i "%~dp0\build.sql" -S localhost,41433 -U sa -P Welcome1!
echo.
echo - Finished Building and Deploying Project ---------------------------------

popd

