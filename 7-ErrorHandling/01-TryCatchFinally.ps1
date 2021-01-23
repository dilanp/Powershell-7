# Error Handling

function Divver ([int] $num, [int] $denom){
    Write-Host 'Divver starts.'

    try {
        $result = $num/$denom
        Write-Host "Result: $result"
    }
    catch {
        Write-Host "$($_.FullyQualifiedErrorId): $($_.Exception.Message)" 
        break # If you want to bubbles up the exception
    }
    finally {
        Write-Host 'Divver done.'
    }
}

Clear-Host
Divver 33 3
Divver 33 0