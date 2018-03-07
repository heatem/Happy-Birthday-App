//
//  UIColor.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/6/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import class UIKit.UIColor
import CoreGraphics

public extension UIColor {
    @nonobjc public static func hexa(value: UInt32) -> UIColor {
        let a = CGFloat((value & 0xFF000000) >> 24) / 255.0
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0xFF00) >> 8) / 255.0
        let b = CGFloat((value & 0xFF)) / 255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
    @nonobjc public static func hex(value: UInt32) -> UIColor {
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0xFF00) >> 8) / 255.0
        let b = CGFloat((value & 0xFF)) / 255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}

public extension UIColor {
    public convenience init(rgb: (r: CGFloat, g: CGFloat, b: CGFloat)) {
        self.init(red: rgb.r/255, green: rgb.g/255, blue: rgb.b/255, alpha: 1.0)
    }
}

public extension UIColor {
    public class var gray: UIColor { return UIColor.hex(value: 0xAAAAAA) }
    public class var hbBlue: UIColor { return UIColor.hex(value: 0x91BEF7) }
}

