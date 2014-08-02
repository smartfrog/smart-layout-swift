//
//  SmartSize.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

public class SmartSize: NSObject {
 
    
    public class func percentWidth(percent:Int, view:UIView) -> Int
    {
        if (view is AbstractLayoutView)
        {
            let abstractLayoutView:AbstractLayoutView = view as AbstractLayoutView;
            return Int(abstractLayoutView.usableSize().width)  * percent / 100;
        }
    
        return Int(view.frame.size.width) * percent / 100;
    }
    
    public class func percentHeight(percent:Int, view:UIView) -> Int
    {
        if (view is AbstractLayoutView)
        {
            let abstractLayoutView:AbstractLayoutView = view as AbstractLayoutView;
            return Int(abstractLayoutView.usableSize().height)  * percent / 100;
        }
        
        return Int(view.frame.size.height) * percent / 100;
    }
    
}
