# Basic Class

class Twitterer {
    # Properties
    [string] $Handle
    [string] $Name = 'Dilan Perera'

    # Constructor
    Twitterer([string] $twitterHandle) {
        $this.Handle = $twitterHandle
    }

    # Method
    [string] TwitterUrl() {
        $url = "https://twitter.com/$($this.Handle)"
        return $url
    }

    [void] LaunchTwitter(){
        Start-Process $this.TwitterUrl() 
    }
}   

$twit = [Twitterer]::new('dilanperera')
$twit.Name
$twit.Handle

$twit.Name = 'Dilan Festus Perera'
$twit.Name

$twit.LaunchTwitter()
