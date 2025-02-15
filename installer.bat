echo off
cls 
echo download ?
pause
cd c:/users/%username%/desktop
mkdir app
PowerShell -command iwr https://raw.githubusercontent.com/mrforgEstudios/allBatch_tools/refs/heads/main/paslist_generator.bat -Outfile c:/users/%username%/desktop/app/Program.bat
if %errorlevel%==0 (
cls 
color 2
echo done
pause>nul
exit
)
else
cls
color 4 
echo error try later
pause>nul
rem app -y
