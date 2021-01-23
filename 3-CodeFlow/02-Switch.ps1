# Switch statement

Clear-Host
[int]$var = Read-Host -Prompt 'Enter a number between 40 and 45'
$prefixStr = "The entered number was - "
switch ($var) {
    40 { Write-Host "$prefixStr Fourty!"; break }
    41 { Write-Host "$prefixStr Fourty One!"; break }
    42 { Write-Host "$prefixStr Fourty Two!"; break }
    43 { Write-Host "$prefixStr Fourty Three!"; break }
    44 { Write-Host "$prefixStr Fourty Four!"; break }
    45 { Write-Host "$prefixStr Fourty Five!"; break }
    Default { Write-Host "You didn't enter a valid number!" }
}