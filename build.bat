@echo ========================================================================================
@echo Prerequisites: 
@echo - Need to have the 7Zip directory added to the PATH environment variable of Windows
@echo - The PuppyTalk Script.exe file need to have already been compliled with Autohotkey
@echo - OR the Ahk2Exe utility must be in the PATH environment variable of Windows
@echo ========================================================================================
@echo.

@echo off
@set /p version="version: "
@set packageName=Puppytalk_Script_v%version%

@cd %~dp0
@set "PROJECT_DIR=%cd%"
@cd "%PROJECT_DIR%"

@Ahk2Exe.exe /in "%PROJECT_DIR%\PuppyTalk Script.ahk" /out "%PROJECT_DIR%\%packageName%.exe" /icon "%PROJECT_DIR%\Resources\img\Dumbtalk-Script-Icon-Running.ico"

:: Reset the Build folder
if exist "Build\" @rd /S /Q "Build"
if not exist "Build\" @mkdir "Build"

:: Create the package folder
@mkdir "Build\%packageName%"

:: Copy the necessary files to the package folder
@robocopy "%PROJECT_DIR%" "Build\%packageName%" "README.md"
@robocopy "%PROJECT_DIR%" "Build\%packageName%" "%packageName%.exe"
@robocopy "%PROJECT_DIR%" "Build\%packageName%" "settings.ini"

:: Zip the package
@7z a -tzip "Build\%packageName%.zip" -r "%PROJECT_DIR%\Build\*"

:: Delete the package folder to only leave the archive
@rd /S /Q "Build\%packageName%"

@echo.
@echo ========================================================================================
@echo Build Finished
@echo ========================================================================================
@echo Package location : "Build\%packageName%.zip"
@echo.
@echo.
pause