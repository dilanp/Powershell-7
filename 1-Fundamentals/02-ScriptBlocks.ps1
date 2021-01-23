# Multiple lines aggregared using semicolon.
$i = 1; $j = 2; $k =3
Write-Host $i; Write-Host $j; Write-Host $k

# Script blocks
&{Clear-Host; Write-Host 'This is the only text here...'}

$scriptBlock = {Clear-Host; Write-Host 'This is the only text here...'}
&$scriptBlock