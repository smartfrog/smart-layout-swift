//
//  UIBackgroundImageView.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

public class UIBackgroundImageView: UIView {

    public var backgroundImageView:UIImageView?;
    
    
    public convenience init(backgroundImageName:String)
    {
        self.init();
        self.setBackgroundImage(backgroundImageName);
        self.frame = CGRectMake(0, 0, self.backgroundImageView!.frame.size.width, self.backgroundImageView!.frame.size.height);
    }
    
    
    public func setBackgroundImage(imageName:String)
    {
        self.backgroundImageView?.removeFromSuperview();
        
        self.backgroundImageView = UIImageView(image: UIImage(named: imageName));
        self.insertSubview(self.backgroundImageView, atIndex: 0);
    }
    
    public func setBackgroundImage(imageName:String, withScale:Bool)
    {
        self.setBackgroundImage(imageName);
        
        if (withScale)
        {
            self.backgroundImageView!.frame = CGRect(x:0, y:0, width: self.frame.size.width, height: self.frame.size.height);
        }
    
    }
}
