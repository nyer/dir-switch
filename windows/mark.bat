@echo off
set MARKPATH=D:\marks
set TAR=%cd%
if not exist %MARKPATH% (goto makedir) else (goto makelink)

:makedir
md %MARKPATH%
attrib +h %MARKPATH%
goto makelink

:makelink
echo %TAR% > %MARKPATH%\%1
cd /d %TAR%
