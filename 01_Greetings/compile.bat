@echo off
set COM_GREETINGS_FOLDER="mods\com.greetings"

echo Creating %COM_GREETINGS_FOLDER%, if it does not exist.
if not exist %COM_GREETINGS_FOLDER% mkdir %COM_GREETINGS_FOLDER%

echo Compiling modules in %COM_GREETINGS_FOLDER%
javac -modulepath mods -d %COM_GREETINGS_FOLDER% ^
        src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java

tree /F %COM_GREETINGS_FOLDER%
