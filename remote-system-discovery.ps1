param (
    [Parameter(Mandatory = $true)]
    [string]$FilePath,

    [Parameter(Mandatory = $true)]
    [int]$PortNumber
)

Start-Transcript -Path ".\output.txt"

$hosts = Get-Content -Path $FilePath # Read each line as a hostname or IP

foreach ($host in $hosts) {
    Test-NetConnection -ComputerName $host -Port $PortNumber # Displays diagnostic information for a connection
}

Stop-Transcript
