@echo off
perl apr\build\cvtdsp.pl -2005
cd apr-util
devenv aprutil.dsw /MAKE libapr - Win32 Release" libapriconv - Win32 Release" gen_uri_delims - Win32 Release" xml - Win32 Release" libaprutil - Win32 Release"
cd ..
