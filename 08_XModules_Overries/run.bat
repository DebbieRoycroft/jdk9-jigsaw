@echo off 
echo Running ^'com.greetings.Main^' from within the mods folder.
java -Xpatch:java.base=mypatches/java.base -modulepath mods -m com.greetings/com.greetings.Main
