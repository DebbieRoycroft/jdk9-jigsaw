@echo off

echo Removing any existing executable directory
if exist executable rmdir /S /Q executable

echo Create an executable version of the com.greetings module
jlink --modulepath %JAVA_HOME%\\jmods;mlib --addmods com.greetings --output executable

tree executable
