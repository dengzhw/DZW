//
//  PushButtomView.swift
//  SwiftCoreGraphic
//
//  Created by zwdeng on 16/4/20.
//  Copyright © 2016年 zwdeng. All rights reserved.
//

import Foundation
import UIKit
class PushButtomView: UIButton {
    override func drawRect(rect: CGRect) {
        let path  = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }
    
}

