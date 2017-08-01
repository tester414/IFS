@ECHO OFF
if not defined PIL (
    set PIL=1
    start /min "" %~0
    exit /b
)
Title = Script Less Keyword Framework
cscript /nologo Drivers\MainBatch.vbs
PAUSE
@ECHO ON