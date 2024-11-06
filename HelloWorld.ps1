# Directory to save the log file
$directoryPath = "D:\"
# Get current date and time for file name
$currentDateTime = Get-Date -Format "MM-dd-yyyy_HH-mm-ss"
# Define the log file name
$logFileName = "$directoryPath$currentDateTime.txt"

# Loop to print "Hello World!" 10 times and save it to the log file
for ($i = 1; $i -le 10; $i++) {
    $message = "Hello World!"
    Write-Output $message
    # Append the message to the log file
    Add-Content -Path $logFileName -Value $message
}

Write-Output "Log file saved to $logFileName"
