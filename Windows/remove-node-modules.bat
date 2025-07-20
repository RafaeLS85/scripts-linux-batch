@echo off
setlocal

set "ROOT_DIR=%~1"
if "%ROOT_DIR%"=="" set "ROOT_DIR=%cd%"

echo Searching for node_modules in: %ROOT_DIR%

for /d /r "%ROOT_DIR%" %%d in (node_modules) do (
  if /i "%%~nxd"=="node_modules" (
    echo Deleting: %%d
    rmdir /s /q "%%d"
  )
)

echo Cleaning complete 
pause
