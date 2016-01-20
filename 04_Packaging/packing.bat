@echo off
if not exist mlib mkdir mlib

echo Creating module org.astro as a jar
jar --create --file mlib/org.astro@1.0.jar ^
	--module-version 1.0 -C mods/org.astro .


echo Creating module com.greetings as a jar
jar --create --file mlib/com.greetings.jar ^
	--main-class=com.greetings.Main -C mods/com.greetings .

tree /F mlib


echo Printing module description for org.astro
jar --print-module-descriptor --file=mlib/org.astro@1.0.jar


echo Printing module description for com.greetings
jar --print-module-descriptor --file=mlib/com.greetings.jar

