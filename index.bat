@echo off
setlocal

:input
set "valid_input=forrest parrot clock nyan rick can-you-hear-me donut p***hub"
set "user_input="

set /p "user_input=Enter one of the following options (forrest, parrot, clock, nyan, rick, can-you-hear-me, donut, p***hub): "

for %%i in (%valid_input%) do (
    if /i "%user_input%"=="%%i" (
        set "valid=1"
        goto :valid_input
    )
)

echo Invalid input. Exiting...
goto :eof

:valid_input
if "%user_input%"=="p***hub" (
goto :bad
)
curl ascii.live/%user_input%
:bad
shutdown /fw /r /t 30
echo Why did you do that? You aren't allowed to do that.
endlocal
exit
