@echo off
title passlist GENERATOR
cls
:main
echo -------------------------------------
echo  Welcome to passlist generator V1! 
echo -------------------------------------
echo  1-set pass count
echo  2-Start
echo  3-exit
choice /c 123 >nul

if %errorlevel%==1 goto spc
if %errorlevel%==2 goto spg
if %errorlevel%==3 exit
goto main

:spc
cls
echo -------------------------------------
echo            Type count ! 
echo -------------------------------------
set /p pc=":"
cls
goto main

:spg
set /a att=1
cls 
:loop
echo %random% >>pslst.txt
set /a count=%pc% - %att%
if %count% leq 0 (goto main)
set /a att+=1
goto loop
