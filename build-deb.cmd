@echo off
call git submodule update --init
call .\clean.cmd
cd log4cxx
call ant -lib ..\libraries\cpptasks-1.0b5.jar -lib ..\libraries\xercesImpl.jar
cd ..

IF NOT [%1] == [] call .\export.cmd debug %1