//
//  Font.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {
    
    static func regularFont (size: CGFloat) -> (UIFont) {
        return UIFont(name: "Hind-Regular", size: size)!
    }
    
    static func boldFont (size: CGFloat) -> (UIFont) {
        return UIFont(name: "Hind-Bold", size: size)!
    }
    
    static func mediumFont (size: CGFloat) -> (UIFont) {
        return UIFont(name: "Hind-Medium", size: size)!
    }
    
    static func semiBoldFont (size: CGFloat) -> (UIFont) {
        return UIFont(name: "Hind-Semibold", size: size)!
    }
    
    static func lightFont (size: CGFloat) -> (UIFont) {
        return UIFont(name: "Hind-Light", size: size)!
    }
}
