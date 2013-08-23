@echo off
set MARKPATH=D:\marks
if [%1]==[] goto err
if not exist "%MARKPATH%/%1" (echo "No such mark: %1") else cd /d "%MARKPATH%/%1"


:err
echo Type a mark, please.
