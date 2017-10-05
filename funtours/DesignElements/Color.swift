//
//  Color.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    enum Colors: String {
        case poloBlue = "#879CC1"
        case springWood = "#F7F6F0"
        case lightSlateGrey = "#82869F"
        case putty = "#D7A76A"
        case heather = "#B5C4D0"
        case quillGrey = "#D8D5D2"
        case gunPowder = "#4A4B54"
        case goldenSand = "#EDCC67"
        
        case hippieBlue = "#54A2A9"
        case smaltBlue = "#5D7D91"
        case cherokee = "#F6CF79"
        case porsche = "#DEA158"
        case buttermilk = "#FBF2B4"
        case jungleMist = "#B7D4D8"
        
        static func randomColor() -> UIColor {
//            let allColors: [Colors] = [.poloBlue, .springWood, Colors.lightSlateGrey, .putty, .heather, .quillGrey, .gunPowder, .goldenSand, .hippieBlue, .smaltBlue, .cherokee, .porsche, .buttermilk, .jungleMist]
            let tableColors: [Colors] = [.hippieBlue, .smaltBlue, .cherokee, .porsche, .buttermilk, .jungleMist]
            let index = Int(arc4random_uniform(UInt32(tableColors.count)))
            let color = tableColors[index].rawValue
            return UIColor(hex: color)
        }
    }
    
    convenience init(hex: String) {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            self.init()
        } else {
            var rgbValue: UInt32 = 0
            Scanner(string: cString).scanHexInt32(&rgbValue)
            
            self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                      alpha: CGFloat(1.0))
        }
    }
    
    // Main Colors
    
    static func poloBlue () -> UIColor {
        return UIColor(hex: Colors.poloBlue.rawValue)
    }
    
    static func springWood () -> UIColor {
        return UIColor(hex: Colors.springWood.rawValue)
    }
    
    static func lightSlateGray () -> UIColor {
        return UIColor(hex: Colors.lightSlateGrey.rawValue)
    }
    
    static func putty () -> UIColor {
        return UIColor(hex: Colors.putty.rawValue)
    }
    
    static func heather () -> UIColor {
        return UIColor(hex: Colors.heather.rawValue)
    }
    
    static func quillGrey () -> UIColor {
        return UIColor(hex: Colors.quillGrey.rawValue)
    }
    
    static func gunPowder () -> UIColor {
        return UIColor(hex: Colors.gunPowder.rawValue)
    }
    
    static func goldenSand () -> UIColor {
        return UIColor(hex: Colors.goldenSand.rawValue)
    }
    
    // Table Colors
    
    static func hippieBlue () -> UIColor {
        return UIColor(hex: Colors.hippieBlue.rawValue)
    }
    
    static func smaltBlue () -> UIColor {
        return UIColor(hex: Colors.smaltBlue.rawValue)
    }
    
    static func cherokee () -> UIColor {
        return UIColor(hex: Colors.cherokee.rawValue)
    }
    
    static func porsche () -> UIColor {
        return UIColor(hex: Colors.porsche.rawValue)
    }
    
    static func buttermilk () -> UIColor {
        return UIColor(hex: Colors.buttermilk.rawValue)
    }
    
    static func jungleMist () -> UIColor {
        return UIColor(hex: Colors.jungleMist.rawValue)
    }
    
}
