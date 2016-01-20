@echo off
echo Running ^'com.greetings.Main^' from within the mods folder.
echo Depends on ^'com.socket^' ^& ^'com.fastsocket^' from within the mods folder.
java -modulepath mods -m com.greetings/com.greetings.Main
