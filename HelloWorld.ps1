param (
    [string]$logFile
)

for ($i = 1; $i -le 10; $i++) {
    $message = "Hello World!"
    Write-Output $message
    Add-Content -Path $logFile -Value $message
}

Write-Output "Log file saved to $logFile"
