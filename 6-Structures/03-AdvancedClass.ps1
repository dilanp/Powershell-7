# Advanced Class

class TwitterRedux {

    # Properties
    [string] $Handle
    [string] $Name = 'Dilan Perera'
    static [string] $Version = '1.0.0'

    # Constructors
    TwitterRedux() {
    }

    TwitterRedux([string] $NewHandle) {
        $this.Handle = $NewHandle
    }

    TwitterRedux([string] $NewName, [string] $NewHandle) {
        $this.Name = $NewName
        $this.Handle = $NewHandle
    }

    # Methods
    [string] TwitterUrl($twitterHandle){
        return "https://twitter.com/$($twitterHandle)"
    }

    [string] TwitterUrl(){
        return $this.TwitterUrl($this.Handle)
    }

    static [void] OpenTwitterPage([string] $twitterHandle){
        Start-Process "https://twitter.com/$($twitterHandle)"
    }

    [void] OpenTwitter(){
        Start-Process $this.TwitterUrl()
    }
}

$twitterDefault = [TwitterRedux]::new()
Write-Host "Default Twitter handle: $($twitterDefault.Handle)"
$twitterDefault.Handle = 'iamsrk'
Write-Host "Updated Twitter handle: $($twitterDefault.Handle)"
Write-Host "Twitter url: $($twitterDefault.TwitterUrl())"
Write-Host "Twitter url: $($twitterDefault.TwitterUrl('dilanperera'))"

$myTwitter = [TwitterRedux]::new('Dilan F. Perera', 'dilanperera')
$myTwitter.Name
$myTwitter.Handle
[TwitterRedux]::Version
$myTwitter.OpenTwitter()