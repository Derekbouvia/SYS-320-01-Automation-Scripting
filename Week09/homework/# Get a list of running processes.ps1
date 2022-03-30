# Get a list of running processes

#Get list of members
#Get-Process | Get-Member

# Get a list of processes: name, id, path
#Get-Process | Select-object ProcessName, id, Path

# Save the Output to a CSV File
#Get-process | Select-object ProcessName, id, Path | Export-csv -Path `
#C:\Users\derek.bouvia\Desktop\processes.csv

$outputName = "C:\Users\derek.bouvia\Desktop\runningServices.csv"

# System Services and properties
#Get-service | get-member
#Get-Service | select-object Status, Name, DisplayName, BinaryPathName |export-csv -Path `
#$outputName
$outputName = "C:\Users\derek.bouvia\Desktop\runningServices.csv"

# Get a list of running services
#Get-Service | Where-Object { $_.Status -eq "Running" }

#Get list of running services and then Save the output to a CSV File

Get-Service | Where-Object { $_.Status -eq "Running" } | Export-csv -Path `
C:\Users\derek.bouvia\Desktop\runningprocesses.csv

#Check to see if the file exists
if ( Test-Path $outputName ) {

    write-host -backgroundcolor "Green" -foregroundcolor "white" "Services file was created!"

} else {

    write-host -backgroundcolor "red" -foreegroundcolor "white" "Services file was not created!"

}