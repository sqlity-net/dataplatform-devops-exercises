rmdir .\temp /s /q
mkdir temp

curl.exe --url "https://run.spawn.cc/spawnctl.exe" --output temp\spawnctl.exe

temp\spawnctl.exe version

temp\spawnctl.exe auth

temp\spawnctl.exe onboard

temp\spawnctl.exe create access-token

