@echo off
echo Running 'com.greetings.Main' from within the mods folder.
echo Dependent on 'org.astro.World' from within the mods folder.
java -modulepath mods -m com.greetings/com.greetings.Main
