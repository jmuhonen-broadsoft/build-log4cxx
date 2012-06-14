@echo off

if "%1" == "debug"	goto debug
if "%1" == "release"	goto release
goto error

:debug
xcopy log4cxx\target\debug\shared\log4cxx.dll %2\extern\prebuild\Debug\win32\bin\ /Y /I
xcopy log4cxx\target\debug\shared\log4cxx.lib %2\extern\prebuild\Debug\win32\lib\ /Y /I
rmdir %2\extern\prebuild\Debug\win32\include\log4cxx /S /Q
xcopy log4cxx\src\main\include\log4cxx        %2\extern\prebuild\Debug\win32\include\log4cxx\ /S /Y /I
goto:eof

:release
xcopy log4cxx\target\release\shared\log4cxx.dll %2\extern\prebuild\Release\win32\bin\ /Y /I
xcopy log4cxx\target\release\shared\log4cxx.lib %2\extern\prebuild\Release\win32\lib\ /Y /I
rmdir %2\extern\prebuild\Release\win32\include\log4cxx /S /Q
xcopy log4cxx\src\main\include\log4cxx          %2\extern\prebuild\Release\win32\include\log4cxx /S /Y /I
goto:eof

:error
echo Usage: export debug/release pc-client-git-root