# Time

A Time module for Swift that wraps `tm` in C


## Usage

```swift
var t = Time()
print(t) // => %A, %B %d %Y %X formated datetime string

t.addDay(1)
t.format("%a, %d %b %Y %H:%M:%S %z")
```


## Apis

### Initializer
```swift
init(tz: TimeZone = .Local, unixtime: Int? = nil)
```

### The TimeZone Enum
```swift
public enum TimeZone {
    case UTC
    case Local
}
```

### Public Members

* rfc822
* rfc1123
* unixtime
* week
* year
* month
* yday
* day
* hour
* min
* sec

### Public Methods

* addDay(x: Int) -> Time
* addHour(x: Int) -> Time
* addMin(x: Int) -> Time
* addSec(x: Int) -> Time
* format(format: String) -> String
  - format: The Format string set for `strftime` in c lang

## Package.swift
```swift
import PackageDescription

let package = Package(
	name: "MyApp",
	dependencies: [
      .Package(url: "https://github.com/slimane-swift/Time", majorVersion: 0, minor: 1)
  ]
)
```

## License

Time is released under the MIT license. See LICENSE for details.
