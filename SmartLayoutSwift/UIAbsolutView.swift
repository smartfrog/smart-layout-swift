//
//  UIAbsolutView.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

public class UIAbsolutView: UIBackgroundImageView {


    public func layoutSubView(view:UIView, top:NSNumber?, right:NSNumber?,  bottom:NSNumber?, left:NSNumber?)
    {
        var x:Int = 0;
        var y:Int = 0;
    
        var width:CGFloat = view.frame.size.width;
        var height:CGFloat = view.frame.size.height;
    
        if (top != nil)
        {
            y = top!.integerValue;
    
            if (bottom != nil)
            {
                height = self.frame.size.height - bottom!.integerValue - top!.integerValue;
            }
        }
        else if (bottom != nil)
        {
            y = self.frame.size.height - bottom!.integerValue - height ;
        }
    
    
        if (left != nil)
        {
            x = left!.integerValue;
    
            if (right != nil)
            {
                width = self.frame.size.width - right!.integerValue - left!.integerValue;
            }
        }
        else if (right != nil)
        {
            x = self.frame.size.width - right!.integerValue - width;
        }
    
        view.frame = CGRect(origin: CGPoint(x: x, y: y), size: CGSize(width: width, height: height));
    }
    
    
    public func addSubView(view:UIView, top:NSNumber?, right:NSNumber?,  bottom:NSNumber?, left:NSNumber?)
    {
        self.layoutSubView(view, top: top, right: right, bottom: bottom, left: left);
        self.addSubview(view);
    }


}
