# Escape characters
Write-Host "`tStarted after a tab."
Write-Host "Line 1.`nLine 2."
Write-Host "Carriege`rReturn"
Write-Host "W`bonwerful!"
Write-Host "`$Value = 10"

# Here strings
$sql = @'
SELECT
	*
FROM
	dbo.Table
WHERE
	Column1 = NULL
'@
Write-Host $sql

# String extrapolation
$items = (Get-ChildItem).Count
$loc = Get-Location
$stringVal = "There are $items items at location $loc"
Write-Host $stringVal

# String formatting
[string]::Format("There are {0} items in the location - {1}", (Get-ChildItem).Count, $pwd)
"There are {0} items in the location - {1}" -f (Get-ChildItem).Count, $pwd

# Wildcards
"PowerShell" -like "Power*"
"PowerShell" -like "?indowds"

# Regular expressions
"888-358-1240" -match "[0-9]{3}-[0-9]{3}-[0-9]{4}"
"ZZZ-358-1240" -match "[0-9]{3}-[0-9]{3}-[0-9]{4}"