# HexaColor v1.0.0 🎨

The initial release of HexaColor - a simple, powerful color utility library for Swift applications.

## Features

### SwiftUI Color Extension
- Initialize `Color` from 6-digit hex strings
- Optional opacity parameter for transparency control
- Supports hex strings with or without '#' prefix
- Clean, intuitive API

### UIKit UIColor Extension
- Initialize `UIColor` from 6-digit hex strings
- Optional alpha parameter for transparency control
- Supports hex strings with or without '#' prefix
- Consistent API across platforms

## Quick Start

```swift
import HexaColor

// SwiftUI
let myColor = Color(hex: "FF00FF")
let transparentColor = Color(hex: "00FF00", opacity: 0.5)

// UIKit
let myUIColor = UIColor(hex: "FF00FF")
let transparentUIColor = UIColor(hex: "00FF00", alpha: 0.5)
```

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/snappsengineering/hexacolor.git", from: "1.0.0")
]
```

## Requirements

- iOS 18.0+
- macOS 15.0+
- Swift 6.0+

## What's Included

- `Color+Extension.swift`: SwiftUI Color hex initialization
- `UIColor+Extension.swift`: UIKit UIColor hex initialization
- Comprehensive unit tests
- Full documentation

## License

[MIT License](LICENSE)
