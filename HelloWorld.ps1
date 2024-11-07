$directoryPath = "./Logs/"
$currentDateTime = Get-Date -Format "MM-dd-yyyy_HH-mm-ss"
$logFileName = "$directoryPath/Logs_$currentDateTime.txt"

for ($i = 1; $i -le 5; $i++) {
    $message = "Hello User👋"
    Write-Output $message
    Add-Content -Path $logFileName -Value $message
}

Write-Output "Log file saved to $logFileName"
