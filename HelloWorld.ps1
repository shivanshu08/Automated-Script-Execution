$directoryPath = "./Logs/"
$currentDateTime = Get-Date -Format "MM-dd-yyyy_HH-mm-ss"

for ($i = 1; $i -le 10; $i++) {
    $message = "Hello World!"
    Write-Output $message
    Add-Content -Path $logFileName -Value $message
}

Write-Output "Log file saved to $logFileName"
