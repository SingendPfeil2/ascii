@echo off
cls
setlocal

:input
set "valid_input=forrest parrot clock nyan rick can-you-hear-me donut phub"
set "user_input="

set /p "user_input=Enter one of the following options (forrest, parrot, clock, nyan, rick, can-you-hear-me, donut, phub): "

for %%i in (%valid_input%) do (
    if /i "%user_input%"=="%%i" (
        set "valid=1"
        goto :valid_input
    )
)

echo Invalid input. Exiting...
goto :eof

:bad
shutdown /f /r /t 30
echo Why did you do that? You aren't allowed to do that.
pause

:valid_input
if "%user_input%"=="phub" (
goto :bad
) else (curl ascii.live/%user_input%)
endlocal
exit
