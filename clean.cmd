@echo off
cd apr
call git clean -f -d
cd ..\apr-util
call git clean -f -d
cd ..\log4cxx
call git clean -f -d
call ant clean -lib ..\libraries\cpptasks-1.0b5.jar
cd ..
