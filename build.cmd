@echo off
cd log4cxx
call ant %* -lib ..\libraries\cpptasks-1.0b5.jar -lib ..\libraries\xercesImpl.jar
cd ..
