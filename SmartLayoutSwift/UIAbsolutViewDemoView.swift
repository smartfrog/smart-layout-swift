//
//  UIAbsolutViewDemoView.swift
//  SmartLayoutSwift
//
//  Created by Frédéric DE MATOS on 02/08/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIAbsolutViewDemoView: UIAbsolutView {

    init()
    {
        super.init(frame:CGRect(x:0, y:0, width:1024, height: 699));
        
        self.setBackgroundImage("background");
        
        var button1:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button1.setTitle("Button1", forState:UIControlState.Normal);
        button1.backgroundColor = UIColor.yellowColor();
        button1.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        self.addSubView(button1, top: 20, right: 20, bottom: 20, left: 20);
        
        var button2:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button2.setTitle("Button2", forState:UIControlState.Normal);
        button2.frame.size = CGSize(width: 200, height: 200);
        button2.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        button2.backgroundColor = UIColor.greenColor();
        self.addSubView(button2, top: 30, right: nil, bottom: nil, left: 30);
        
        var button3:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        button3.setTitle("Button3", forState:UIControlState.Normal);
        button3.frame.size = CGSize(width: 200, height: 200);
        button3.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal);
        button3.backgroundColor = UIColor.blueColor();
        self.addSubView(button3, top: nil, right: 30, bottom: 30, left: nil);
    }
}
