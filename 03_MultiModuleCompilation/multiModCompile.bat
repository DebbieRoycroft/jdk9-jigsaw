@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set DESTINATION_FOLDER=mods

echo Creating folder %DESTINATION_FOLDER%, if it does not exist.
if not exist %DESTINATION_FOLDER% mkdir %DESTINATION_FOLDER%

echo Compiling modules in %DESTINATION_FOLDER%
for /r %%F in (*.java) do set file_list=!file_list! %%F
echo Compiling source files %file_list%
javac -d %DESTINATION_FOLDER% ^
	-modulesourcepath src %file_list%

tree /F %DESTINATION_FOLDER%
