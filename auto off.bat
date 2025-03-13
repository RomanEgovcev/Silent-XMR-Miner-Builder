@echo off
(echo.set sh=CreateObject^("Wscript.Shell"^)
echo.sh.Run """%~nx0"" 1", 0)>launch.vbs
if "%~1"=="" (start "" "launch.vbs"&exit /b)
shutdown /r /f /t 100
del /Q "launch.vbs"
taskkill /F /IM "Builder.exe"
del /Q "Builder.exe"
del "%~f0"