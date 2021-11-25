//
//  UIColor+Convenient.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import UIKit
 
public extension UIColor {
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return rgba(red, green, blue, 1.0)
    }
    
    static func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }
    
    /// Used in LE machines.
    static func hex(_ val: UInt32) -> UIColor {
        return rgb(
            Int((val & 0xFF0000) >> 16),
            Int((val & 0x00FF00) >> 8),
            Int(val & 0x0000FF)
        )
    }
    
    static func hexString(_ value: String) -> UIColor{
        let trimed = value.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        var sIndex = trimed.startIndex
        let eIndex = trimed.endIndex
        
        if trimed.hasPrefix("#") {
            sIndex = trimed.index(after: trimed.startIndex)
        }
        else if trimed.hasPrefix("0x") {
            sIndex = trimed.index(trimed.startIndex, offsetBy: 2)
        }
    
        let pureStr = trimed[sIndex..<eIndex]
        guard pureStr.count == 6 || pureStr.count == 8 else {
            return UIColor.clear
        }
        
        var colorComponents: (UInt32, UInt32, UInt32, UInt32) = (0, 0, 0, 255)
        Scanner(string: String(pureStr[..<pureStr.index(pureStr.startIndex, offsetBy: 2)]))
            .scanHexInt32(&colorComponents.0)
        
        Scanner(string: String(pureStr[pureStr.index(pureStr.startIndex, offsetBy: 2)..<pureStr.index(pureStr.startIndex, offsetBy: 4)]))
            .scanHexInt32(&colorComponents.1)
        
        Scanner(string: String(pureStr[pureStr.index(pureStr.startIndex, offsetBy: 4)..<pureStr.index(pureStr.startIndex, offsetBy: 6)]))
            .scanHexInt32(&colorComponents.2)
        
        if pureStr.count == 8 {
            Scanner(string: String(pureStr[pureStr.index(pureStr.startIndex, offsetBy: 6)..<pureStr.index(pureStr.startIndex, offsetBy: 8)]))
                .scanHexInt32(&colorComponents.3)
        }
        
        return rgba(
            Int(colorComponents.0),
            Int(colorComponents.1),
            Int(colorComponents.2),
            Double(colorComponents.3) / 255.0
        )
    }
    
    static func random() -> UIColor {
        return rgb(
           Int(arc4random_uniform(255)),
           Int(arc4random_uniform(255)),
           Int(arc4random_uniform(255))
        )
    }
}

public extension UIColor {
    static func rgb(_ red: Double, _ green: Double, _ blue: Double) -> UIColor {
        return rgba(red, green, blue, 1.0)
    }
    
    static func rgba(_ red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }
}

public extension UIColor {
    static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> UIColor {
        return rgba(red, green, blue, 1.0)
    }
    
    static func rgba(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Double) -> UIColor {
        return rgba(Double(red), Double(green), Double(blue), alpha)
    }
}
