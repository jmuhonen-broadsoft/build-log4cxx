@echo off
call git submodule update --init
cd log4cxx
call ant %* -lib ..\libraries\cpptasks-1.0b5.jar -lib ..\libraries\xercesImpl.jar
cd ..
