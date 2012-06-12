#!/bin/sh
set +v
cd apr
git clean -f -d
cd ../apr-util
git clean -f -d
cd ../log4cxx
git clean -f -d
ant clean -lib ../libraries/cpptasks-1.0b5.jar
cd ..
