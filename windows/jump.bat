@echo off
set MARKPATH=D:\marks
if [%1]==[] goto err
if not exist "%MARKPATH%/%1" (echo "No such mark: %1") else goto gotomark


:err
echo Type a mark, please.

:gotomark
for /f %%i in (%MARKPATH%\%1) do set TARGET=%%i 
cd /d "%TARGET%"

