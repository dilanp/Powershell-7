# If statement

Clear-Host
[int]$var = Read-Host -Prompt 'Please enter your number'

if ($var -gt 10) {
    Write-Host 'The variable is greater than 10'
}
elseif($var -lt 10) {
    Write-Host 'The variable is less than 10'
}
else {
    Write-Host 'The variable is equal to 10'
}
