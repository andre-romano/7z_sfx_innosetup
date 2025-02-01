# executable to run
$executable = "setup.exe"

# Define the output folder where setup.exe is located
$outputFolder = $args[0]

# Define the path to the setup.exe file
$setupExePath = Join-Path -Path $outputFolder -ChildPath $executable

# Check if setup.exe exists in the output folder
if (Test-Path $setupExePath) {
    # Run the setup.exe file
    Write-Host "Running setup.exe from $setupExePath..."
    Start-Process -FilePath $setupExePath -Wait
    Write-Host "Setup completed successfully."
}
else {
    Write-Host "setup.exe not found in the output folder."
}
