@echo off

if "%1" == "debug"	goto debug
if "%1" == "release"	goto release
goto error

:debug
xcopy log4cxx\target\debug\shared\log4cxx.dll %2\extern\prebuild\Debug\win32\bin\ /Y /I
xcopy log4cxx\target\debug\shared\log4cxx.lib %2\extern\prebuild\Debug\win32\lib\ /Y /I
xcopy log4cxx\src\main\include\log4cxx        %2\extern\prebuild\Debug\win32\include\log4cxx\ /S /Y /I
goto end

:release
xcopy log4cxx\target\release\shared\log4cxx.dll %2\extern\prebuild\Release\win32\bin\ /Y /I
xcopy log4cxx\target\release\shared\log4cxx.lib %2\extern\prebuild\Release\win32\lib\ /Y /I
xcopy log4cxx\src\main\include\log4cxx          %2\extern\prebuild\Release\win32\include\ /S /Y /I
goto end

:error
echo Usage: export debug/release pc-client-git-root

:end
@echo on