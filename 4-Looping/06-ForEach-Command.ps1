# ForEach Object command

Get-Service | 
Where-Object -Property Status -eq Stopped | 
ForEach-Object -Begin {Write-Host 'Starting loop....'} -Process {Write-Host "$($_.Name)) - $($_.DisplayName)"} -End {'Ending loop....'}