@echo off
echo Removing any existing greetings.jmod
if exist greetings.jmod del /F /Q greetings.jmod

echo Creating a module (greetings.jmod) from multiple modules / packages / classes with jlink.
jmod --create --class-path mods\com.greetings;mods\org.astro greetings.jmod

echo Enlisting the contents of the module (greetings.jmod).
jmod --list greetings.jmod
