//
//  ColorExtensionTests.swift
//  HexaColor
//
//  Created by snapps engineering ltd.
//


import XCTest
import SwiftUI
@testable import HexaColor

class ColorExtensionTests: XCTestCase {
    // Test hex initialization with full hex string (with #)
    func testHexInitializationWithPrefix() {
        let color = Color(hex: "#FF0000")
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0
        
        let nsColor = UIColor(color)
        nsColor.getRed(&red, green: &green, blue: &blue, alpha: &opacity)
        
        XCTAssertEqual(red, 1.0, accuracy: 0.01, "Red component should be 1.0")
        XCTAssertEqual(green, 0.0, accuracy: 0.01, "Green component should be 0.0")
        XCTAssertEqual(blue, 0.0, accuracy: 0.01, "Blue component should be 0.0")
        XCTAssertEqual(opacity, 1.0, accuracy: 0.01, "Opacity should be 1.0")
    }
    
    // Test hex initialization without prefix
    func testHexInitializationWithoutPrefix() {
        let color = Color(hex: "00FF00")
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0
        
        let nsColor = UIColor(color)
        nsColor.getRed(&red, green: &green, blue: &blue, alpha: &opacity)
        
        XCTAssertEqual(red, 0.0, accuracy: 0.01, "Red component should be 0.0")
        XCTAssertEqual(green, 1.0, accuracy: 0.01, "Green component should be 1.0")
        XCTAssertEqual(blue, 0.0, accuracy: 0.01, "Blue component should be 0.0")
        XCTAssertEqual(opacity, 1.0, accuracy: 0.01, "Opacity should be 1.0")
    }
    
    // Test hex initialization with custom opacity
    func testHexInitializationWithOpacity() {
        let color = Color(hex: "#0000FF", opacity: 0.5)
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0
        
        let nsColor = UIColor(color)
        nsColor.getRed(&red, green: &green, blue: &blue, alpha: &opacity)
        
        XCTAssertEqual(red, 0.0, accuracy: 0.01, "Red component should be 0.0")
        XCTAssertEqual(green, 0.0, accuracy: 0.01, "Green component should be 0.0")
        XCTAssertEqual(blue, 1.0, accuracy: 0.01, "Blue component should be 1.0")
        XCTAssertEqual(opacity, 0.5, accuracy: 0.01, "Opacity should be 0.5")
    }
}
