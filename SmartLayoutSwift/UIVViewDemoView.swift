//
//  UIVViewViewDeli.swift
//  SmartLayoutSwift
//
//  Created by Frédéric DE MATOS on 02/08/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIVViewDemoView: UIVView {

    init()
    {
        super.init(frame:CGRect(x:0, y:0, width:1024, height: 699));
        
        self.setBackgroundImage("background");
        self.padding = 20;
        self.gap = 20;
        self.hAlign = HorizontalAlign.Center;
        self.vAlign = VerticalAlign.Middle;
        
        var button1:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button1.setTitle("Button1", forState:UIControlState.Normal);
        button1.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        self.addSubview(button1, size:CGSizeMake(200, 200));
        
        var button2:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button2.setTitle("Button2", forState:UIControlState.Normal);
        button2.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        self.addSubview(button2, size:CGSizeMake(200, 200));
        
        var button3:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button3.setTitle("Button3", forState:UIControlState.Normal);
        button3.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        self.addSubview(button3, size:CGSizeMake(200, 200));
    }

}
