//
//  Distance.swift
//  funtours
//
//  Created by Catharina Herchert on 29.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit
import MTRadialMenu.MTMenuItem


class Distance: MTMenuItem {
    
    var colorNormal: UIColor! = UIColor.hippieBlue()
    var colorSelected: UIColor! = UIColor.sundance()
    var fillColor3: UIColor! = UIColor.white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        self.collisionPath = UIBezierPath()
        self.collisionPath.move(to: CGPoint(x: 23.6, y: 73.5))
        self.collisionPath.addCurve(to: CGPoint(x: 41.72, y: 36.93), controlPoint1: CGPoint(x: 28.95, y: 73.51), controlPoint2: CGPoint(x: 40.07, y: 40.76))
        self.collisionPath.addCurve(to: CGPoint(x:37.25, y: 6.22), controlPoint1: CGPoint(x: 45.0, y: 29.3), controlPoint2: CGPoint(x: 45.4, y: 13.86))
        self.collisionPath.addCurve(to: CGPoint(x: 7.75, y: 6.22), controlPoint1: CGPoint(x: 29.11, y: -1.41), controlPoint2: CGPoint(x: 15.89, y: -1.41))
        self.collisionPath.addCurve(to: CGPoint(x: 3.28, y: 36.93), controlPoint1: CGPoint(x: -0.4, y: 13.86), controlPoint2: CGPoint(x: 0.0, y: 29.3))
        self.collisionPath.addCurve(to: CGPoint(x:23.6, y: 73.5), controlPoint1: CGPoint(x: 4.92, y: 40.73), controlPoint2: CGPoint(x: 18.27, y: 73.49))
        
        self.collisionPath.close()
        (self.isSelected ? fillColorSelected : fillColorNormal)?.setFill()
        self.collisionPath.fill()
        
        ///////////////////////////
        
        let bezierPath: UIBezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 24.5, y: 26.5))
        bezierPath.addLine(to: CGPoint(x: 10.5, y: 28.5))
        bezierPath.addCurve(to: CGPoint(x: 24.5, y: 26.5), controlPoint1: CGPoint(x: 10.5, y: 28.5), controlPoint2: CGPoint(x: 19.68, y: 26.75))
        bezierPath.addCurve(to: CGPoint(x:31.5, y: 28.5), controlPoint1: CGPoint(x: 29.32, y: 26.25), controlPoint2: CGPoint(x: 31.5, y: 28.5))
        bezierPath.addLine(to: CGPoint(x: 24.5, y: 26.5))
        bezierPath.close()
        fillColor3.setFill()
        bezierPath.fill()
        fillColor3.setStroke()
        bezierPath.lineWidth = 3
        bezierPath.stroke()
        
        
    }
}
