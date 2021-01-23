# Basic functions

function Get-Multiplied($One, $Two) {
    return $One * $Two
}

Get-Multiplied 25 26

$returnedVal = Get-Multiplied -Two 22 -One 25
Write-Host "Multiplied value: $returnedVal"

