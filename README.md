<img width="408" height="283" alt="Untitled 2" src="https://github.com/user-attachments/assets/4423b939-29e2-46f7-992d-a3fbeaf7627d" />

# HexaColor

## Overview

This package provides convenient extensions for creating colors from 6-digit hexadecimal color codes in both SwiftUI and UIKit, supporting easy color initialization with optional opacity/alpha.

## Features

- <b>SwiftUI Color Extension</b>
  - Initialize `Color` from 6-digit hex strings
  - Optional opacity parameter
  - Supports hex strings with or without '#' prefix

- <b>UIKit UIColor Extension</b>
  - Initialize `UIColor` from 6-digit hex strings
  - Optional alpha parameter
  - Supports hex strings with or without '#' prefix

## Usage

### SwiftUI Example usage
```swift
let myColor = Color(hex: "FF00FF”)
let myTransparentColor = Color(hex: "00FF00", opacity: 0.5)
let anotherColor = Color(hex: "#0000FF”)
```

### UIKit Example Usage:
```swift
let myColor = UIColor(hex: "FF00FF”)
let myTransparentColor = UIColor(hex: "00FF00", opacity: 0.5)
let anotherColor = UIColor(hex: "#0000FF”)
```

## Installation

### Swift Package Manager

Add the package to your project's dependencies in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/snappsengineering/hexacolor.git", from: "1.0.0")
]
```
```swift
dependencies: [
    .package(url: "git@github.com:snappsengineering/hexacolor.git", from: "1.0.0")
]
```

## Error Handling

If an invalid hex string is provided (not exactly 6 digits), the extension will trigger a fatalError
Ensure hex strings are exactly 6 hexadecimal characters

## Requirements

iOS 13.0+
Swift 5.0+

## License

[MIT License](https://github.com/snappsengineering/hexacolor/blob/main/LICENSE)
