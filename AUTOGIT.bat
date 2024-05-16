echo off
cls 
title AUTO GIF
set /p a="Paste github link here and hit enter:"
git clone %a% -q
cls
echo Sucsses Check the folder !
pause>nul 