Start-Sleep 5

$cntnt=Get-Content ../hoaxshell/py.log

$cntnt.Replace('powershell -e ','') | Out-File ./info

Write-Host "finished !" -ForegroundColor Yellow
