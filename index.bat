@echo off
setlocal

:input
set "valid_input=forrest parrot clock nyan rick can-you-hear-me donut"
set "user_input="

rem Prompt the user for input
set /p "user_input=Enter one of the following options (forrest, parrot, clock, nyan, rick, can-you-hear-me, donut): "

rem Check if the input is valid
for %%i in (%valid_input%) do (
    if /i "%user_input%"=="%%i" (
        set "valid=1"
        goto :valid_input
    )
)

echo Invalid input. Exiting...
goto :eof

:valid_input
curl ascii.live/%user_input%

endlocal
exit
