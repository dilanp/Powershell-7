# Advanced functions

function Get-Multiplication {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true
                   , HelpMessage = 'Please enter value 1')]
        [int]
        $Value1

        ,[Parameter(Mandatory = $false
                    , HelpMessage = 'Please enter value 2')]
        [int]
        $Value2 = 42
    )
    
    begin {
        Write-Verbose 'Function starting...'
    }
    
    process {
        Write-Debug "`$Value1 = $Value1, `$Value2 = $Value2"
        return $Value1 * $Value2
    }
    
    end {
        Write-Verbose 'Function ends now...'
    }
}

Get-Multiplication -Value1 22 -Value2 25
Get-Multiplication -Value1 25
Get-Multiplication
Get-Multiplication "x1"

function Get-PSFile {
    [CmdletBinding()]
    param (
        # Pipeline parameter
        [Parameter(ValueFromPipeline)]
        $file
    )
    
    begin {
        
    }
    
    # Executed for each item coming through the pipeline
    process {
        if ($file.Name -like '*.ps1' ) {
            $retVal = "`tPowerShell file is: $($file.Name)"
            return $retVal
        }
    }
    
    end {
        
    }
}

Get-ChildItem | Get-PSFile

function Get-AName {
    # Pipeline value by selected property
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName)]
        $Name
    )
    
    begin {
        
    }
    
    process {
        $retValue = "`tYou passed in: $Name"
        return $retValue
    }
    
    end {
        
    }
}

Get-ChildItem | Get-AName
Get-Process | Get-AName