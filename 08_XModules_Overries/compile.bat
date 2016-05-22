@echo off
set PATCHES_FOLDER="mypatches\java.base"

echo Compiling without excluding will give errors
javac -d %PATCHES_FOLDER% ^
        src/java.base/java/util/concurrent/PriorityBlockingQueue.java

echo ------		
echo Compiling a module by excluding it first.

javac -Xmodule:java.base -d %PATCHES_FOLDER% ^
        src/java.base/java/util/concurrent/PriorityBlockingQueue.java

echo -------
set COM_GREETINGS_FOLDER="mods\com.greetings"

echo Creating %COM_GREETINGS_FOLDER%, if it does not exist.
if not exist %COM_GREETINGS_FOLDER% mkdir %COM_GREETINGS_FOLDER%

echo Compiling modules in %COM_GREETINGS_FOLDER%
javac -modulepath mods -d %COM_GREETINGS_FOLDER% ^
        src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java

tree /F %PATCHES_FOLDER%
tree /F %COM_GREETINGS_FOLDER%

