//
//  ViewController.swift
//  SwiftCoreGraphic
//
//  Created by zwdeng on 16/4/20.
//  Copyright © 2016年 zwdeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gview :CoreGraphicView = CoreGraphicView();
        gview.frame = CGRectMake(0, 0, 300, 300)
        gview.center.x = self.view.center.x
        gview.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(gview);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

