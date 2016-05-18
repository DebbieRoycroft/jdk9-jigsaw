@echo off

set COM_GREETINGS_FOLDER="mods/com.greetings"
set ORG_ASTRO_FOLDER="mods/org.astro"
set ORG_ASTRO2_FOLDER="mods/org.astro2"

echo Creating folders %ORG_ASTRO_FOLDER%, %ORG_ASTRO2_FOLDER% and %COM_GREETINGS_FOLDER%, if they do not exist.
if not exist %ORG_ASTRO_FOLDER% mkdir %ORG_ASTRO_FOLDER% 
if not exist %COM_GREETINGS_FOLDER% mkdir %COM_GREETINGS_FOLDER% 
if not exist %ORG_ASTRO2_FOLDER% mkdir %ORG_ASTRO2_FOLDER%

echo Compiling modules in %ORG_ASTRO_FOLDER%
javac -d %ORG_ASTRO_FOLDER% ^
        src/org.astro/module-info.java src/org.astro/org/astro/World.java
tree /F %ORG_ASTRO_FOLDER%

echo Compiling modules in %ORG_ASTRO2_FOLDER%
javac -d %ORG_ASTRO2_FOLDER% ^
        src/org.astro2/module-info.java src/org.astro2/org/astro/World.java
tree /F %ORG_ASTRO2_FOLDER%

echo Compiling modules in %COM_GREETINGS_FOLDER%
javac -modulepath mods -d %COM_GREETINGS_FOLDER% ^
        src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java

tree /F %COM_GREETINGS_FOLDER%