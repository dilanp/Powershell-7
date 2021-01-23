# Parameterised Scripts

[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string[]]
    $commandPrefixes
)

$services = Get-Service -Name $commandPrefixes | Sort-Object -Property DisplayName

foreach ($service in $services) {
    if ($service.Status -eq 'Running') {
        Write-Host "Ok: service $($service.DisplayName) is healthy."
    }
    else {
        Write-Host "Warning: service $($service.DisplayName) is in danger!"
    }
}