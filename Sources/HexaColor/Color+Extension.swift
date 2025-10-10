

import SwiftUI

public extension Color {
    /// Initialize a Color from a hex string
    /// - Parameters:
    ///   - hex: A hex color string (with or without '#' prefix)
    ///   - opacity: Optional opacity value (default is 1.0)
    init(hex: String, opacity: Double = 1.0) {
        let cleanHex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        guard cleanHex.count == 6 else {
            fatalError("Hex string must be exactly 6 hexadecimal digits (e.g., \"FF00FF\").")
        }
        var parsedHex: UInt64 = 0
        
        Scanner(string: cleanHex).scanHexInt64(&parsedHex)
        
        let red = Double((parsedHex & 0xFF0000) >> 16) / 255.0
        let green = Double((parsedHex & 0x00FF00) >> 8) / 255.0
        let blue = Double(parsedHex & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

