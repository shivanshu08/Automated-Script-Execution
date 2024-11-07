$directoryPath = "./Logs/"
$currentDateTime = Get-Date -Format "MM-dd-yyyy_HH-mm-ss"
$logFileName = "$directoryPath/Logs_$currentDateTime.txt"
param (
    [string]$logFile
)

for ($i = 1; $i -le 10; $i++) {
    $message = "Hello World!"
    Write-Output $message
    Add-Content -Path $logFileName -Value $message
    Add-Content -Path $logFile -Value $message
}

Write-Output "Log file saved to $logFileName"
Write-Output "Log file saved to $logFile"
