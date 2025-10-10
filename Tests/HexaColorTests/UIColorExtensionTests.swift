//
//  UIColorExtensionTests.swift
//  HexaColor
//
//  Created by snapps engineering ltd.
//


import XCTest
import UIKit
@testable import HexaColor

class UIColorExtensionTests: XCTestCase {
    // Test hex initialization with full hex string (with #)
    func testHexInitializationWithPrefix() {
        let color = UIColor(hex: "#FF0000")
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        XCTAssertEqual(red, 1.0, accuracy: 0.01, "Red component should be 1.0")
        XCTAssertEqual(green, 0.0, accuracy: 0.01, "Green component should be 0.0")
        XCTAssertEqual(blue, 0.0, accuracy: 0.01, "Blue component should be 0.0")
        XCTAssertEqual(alpha, 1.0, accuracy: 0.01, "Alpha should be 1.0")
    }
    
    // Test hex initialization without prefix
    func testHexInitializationWithoutPrefix() {
        let color = UIColor(hex: "00FF00")
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        XCTAssertEqual(red, 0.0, accuracy: 0.01, "Red component should be 0.0")
        XCTAssertEqual(green, 1.0, accuracy: 0.01, "Green component should be 1.0")
        XCTAssertEqual(blue, 0.0, accuracy: 0.01, "Blue component should be 0.0")
        XCTAssertEqual(alpha, 1.0, accuracy: 0.01, "Alpha should be 1.0")
    }
    
    // Test hex initialization with custom alpha
    func testHexInitializationWithAlpha() {
        let color = UIColor(hex: "#0000FF", alpha: 0.5)
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        XCTAssertEqual(red, 0.0, accuracy: 0.01, "Red component should be 0.0")
        XCTAssertEqual(green, 0.0, accuracy: 0.01, "Green component should be 0.0")
        XCTAssertEqual(blue, 1.0, accuracy: 0.01, "Blue component should be 1.0")
        XCTAssertEqual(alpha, 0.5, accuracy: 0.01, "Alpha should be 0.5")
    }
}
