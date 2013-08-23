@echo off 
set MARKPATH=D:\marks
set TAR=%cd%
if not exist %MARKPATH% (goto makedir) else (goto makelink)

:makedir
md %MARKPATH%
attrib +h %MARKPATH%
goto makelink

:makelink
cd %MARKPATH%
touch %1
echo %TAR% > %1
cd %TAR%
