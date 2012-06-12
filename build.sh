#!/bin/sh
set +v
cd log4cxx
source ant $* -lib ..\libraries\cpptasks-1.0b5.jar -lib ..\libraries\xercesImpl.jar
cd ..
