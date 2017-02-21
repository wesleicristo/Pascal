@echo off
c:\dev-pas\bin\ldw.exe  -s   -o c:\users\servidor\dropbox\pascal\grid.exe link.res exp.$$$
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
