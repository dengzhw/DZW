//
//  CoreGraphicView.swift
//  SwiftCoreGraphic
//
//  Created by zwdeng on 16/4/20.
//  Copyright © 2016年 zwdeng. All rights reserved.
//

import Foundation
import UIKit
class CoreGraphicView: UIView  {
   override func drawRect(rect: CGRect) {
        let context  = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.whiteColor().CGColor)
        CGContextSetShadow(context, CGSizeMake(0, 0), 0)
        CGContextSaveGState(context);
        let newRect = CGRectMake(40, 150, 240, 50)
        let newPath = UIBezierPath(ovalInRect: newRect)
        newPath.addClip()
        let colorSpace = CGColorSpaceCreateDeviceRGB();
        let colors: [CGColorRef] = [UIColor(colorLiteralRed: 0.3, green: 0.0, blue: 00, alpha: 0.2).CGColor,UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 1.0, alpha: 0.8).CGColor]
        let locations : [CGFloat] = [0.0,1.0]
        let gradient  = CGGradientCreateWithColors(colorSpace, colors, locations)
    
       CGContextDrawLinearGradient(context, gradient, CGPointMake(40, 150), CGPointMake(280, 200), CGGradientDrawingOptions.DrawsBeforeStartLocation)
        
        CGContextRestoreGState(context);
    }
}
