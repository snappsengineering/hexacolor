

import UIKit

public extension UIColor {
    /// Initialize a UIColor from a hex string
    /// - Parameters:
    ///   - hex: A hex color string (with or without '#' prefix)
    ///   - alpha: Optional alpha value (default is 1.0)
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        // Remove any non-alphanumeric characters
        let cleanHex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        guard cleanHex.count == 6 else {
            fatalError("Hex string must be exactly 6 hexadecimal digits (e.g., \"FF00FF\").")
        }
        var parsedHex: UInt64 = 0
        
        // Scan the hex string
        Scanner(string: cleanHex).scanHexInt64(&parsedHex)
        
        let red = CGFloat((parsedHex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((parsedHex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(parsedHex & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

