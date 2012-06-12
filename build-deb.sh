#!/bin/sh
set +v
git submodule update --init
. ./clean.sh
cd log4cxx
ant $* -lib ../libraries/cpptasks-1.0b5.jar -lib ../libraries/xercesImpl.jar
cd ..
