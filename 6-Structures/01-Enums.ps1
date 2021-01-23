# Enums

enum MyStatuses {
    Ordered
    Processing
    Shipped
    Cancelled
    Delivered
}

$status1 = [MyStatuses]::Shipped
$status1
[enum]::IsDefined([MyStatuses], $status1)

$invalidStatus = 'Invalid'
[enum]::IsDefined([MyStatuses], $invalidStatus)

enum MyColours {
    Red = 1
    Green = 2
    Blue = 3
}

[MyColours]::GetEnumNames()
[MyColours]::GetEnumValues()

[MyColours]::Green -eq 2
[MyColours]::Red -eq 3

enum Folks {
    Adam = 1
    John = 1
    Robert = 2
    Alma = 2
    Raven = 3
    Anna = 3
    Jack = 3
}

[Folks]::Adam -eq 1
[Folks]::John -eq 1
[Folks]::Adam -eq [Folks]::John