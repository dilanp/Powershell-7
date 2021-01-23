# For-Each loop

Clear-Host
$array = 1,2,3,4,5
foreach ($item in $array) {
    Write-Host "For-Each item: $item"
}

foreach ($file in Get-ChildItem) {
    $fileName = $file.Name
    Write-Host "File name: $fileName"
}