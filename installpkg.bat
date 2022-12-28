@echo off
CD /d %~dp0

echo.
echo A Cup of linux VCREDIST INSTALL OPENSOURCE
echo https://github.com/ACupOfLinux
echo.
echo INSTALLING ALL VCREDIST PACKAGES

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo  Installing 2005
start /wait vcredist2005_x86.exe /q

echo  Installing 2008
start /wait vcredist2008_x86.exe /qb

echo  Installing 2010
start /wait vcredist2010_x86.exe /passive /norestart

echo  Installing 2012
start /wait vcredist2012_x86.exe /passive /norestart

echo Installing 2013
start /wait vcredist2013_x86.exe /passive /norestart

echo  Installing 2015, 2017 ^& 2019
start /wait vcredist2015_2017_2019_2022_x86.exe /passive /norestart

goto END

:X64

echo  Installing 2005
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo  Installing 2008
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo  Installing 2010
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo  Installing 2012
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo Installing 2013
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

Installing 2015, 2017 ^& 2019
start /wait vcredist2015_2017_2019_2022_x86.exe /passive /norestart
start /wait vcredist2015_2017_2019_2022_x64.exe /passive /norestart

goto END

:END

echo.
echo Installation completed Subcribe to A Cup Of Linux...

exit