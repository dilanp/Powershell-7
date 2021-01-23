# Hash tables
$hashTable = @{ 'Key' = 'Value'
                'Powershell' = 'This is PowerShell!'
                'Dilan Perera' = 'This is Dilan Perera'}
$hashTable
$hashTable['PowerShell']
$hashTable.Powershell
$hashTable.'Dilan Perera'

$hashTable.Keys
$hashTable.Values

$emptyHashTable = @{}
$emptyHashTable['Pluralsight'] = 'This is PluralSight'
$emptyHashTable
$emptyHashTable['Pluralsight']
