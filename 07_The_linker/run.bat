@echo off
echo Running ^'com.greetings.Main^' from within the module (jar) in the mlib folder.
echo Dependent on ^'org.astro.World^' from within the module (jar) in the mlib folder.

java -mp mlib -m com.greetings
