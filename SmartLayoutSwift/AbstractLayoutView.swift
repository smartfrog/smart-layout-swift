//
//  AbstractLayoutView.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit


public enum Layout {case Horizontal, Vertical};
public enum HorizontalAlign {case Left, Right, Center};
public enum VerticalAlign {case Top, Bottom, Middle};


public class AbstractLayoutView: UIBackgroundImageView {

    public var gap:Int = 10;
    public var padding:Int = 10;
    
    public var layout:Layout?;
    public var hAlign:HorizontalAlign = HorizontalAlign.Left;
    public var vAlign:VerticalAlign = VerticalAlign.Top;
    
    public func usableSize() -> CGSize
    {
        return CGSize(width: self.frame.size.width - 2 * self.padding, height: self.frame.size.height - 2 * self.padding);
    }
    
    
    public func addSubview(view:UIView, size:CGSize)
    {
        view.frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y, width: size.width, height: size.height);
    
        self.addSubview(view);
    }
    
    public func addSubview(view:UIView, percentWidth:NSNumber?, percentHeight:NSNumber?)
    {
        var width:Int = Int(view.frame.size.width);
        var height:Int = Int(view.frame.size.height);
    
        if (percentWidth)
        {
            width = SmartSize.percentWidth(percentWidth!.integerValue, view:self);
        }
    
        if (percentHeight)
        {
            height = SmartSize.percentHeight(percentHeight!.integerValue, view:self);
        }
    
        view.frame.size = CGSize(width: width, height: height);
    
        self.addSubview(view);
    }
    
    
    private func totalSubViewsSize() -> CGSize
    {
        var width:Int = 0;
        var height:Int = 0;
    
        for view in (self.subviews as [UIView])
        {
            if (view  != self.backgroundImageView)
            {
                if (width > 0)
                {
                    width += self.gap;
                }
                
                if (height > 0)
                {
                    height += self.gap;
                }
    
                width += Int(view.frame.size.width);
                height += Int(view.frame.size.height);
            }
        }
    
        return CGSize(width: width, height: height);
    }
    
    override public func layoutSubviews()
    {
        let totalSize:CGSize = self.totalSubViewsSize();
        var previousView:UIView?;
    
        let currentViewSize:CGSize = self.frame.size;
    
        for view in (self.subviews as [UIView])
        {
            if (view != self.backgroundImageView)
            {
                var x:Int = 0;
                var y:Int = 0;
    
                switch (self.vAlign)
                {
                    case .Top:
                        y = self.padding;
    
                    case .Bottom:
                        y = Int(currentViewSize.height) - self.padding;
    
                        if (self.layout == Layout.Vertical)
                        {
                            y -= Int(totalSize.height);
                        }
    
                        if (self.layout == Layout.Horizontal)
                        {
                            y -= Int(view.frame.size.height);
                        }

    
                    case .Middle:
                        y = Int(currentViewSize.height) / 2;
    
                        if (self.layout == Layout.Vertical)
                        {
                            y -= Int(totalSize.height) / 2;
                        }
    
                        if (self.layout == Layout.Horizontal)
                        {
                            y -= Int(view.frame.size.height) / 2;
                        }
                }
    
                switch (self.hAlign)
                {
                    case .Left:
                        x = self.padding;
      
                    case .Right:
                        x = Int(currentViewSize.width) - self.padding;
    
                        if (self.layout == Layout.Vertical)
                        {
                            x -= Int(view.frame.size.width);
                        }
    
                        if (self.layout == Layout.Horizontal)
                        {
                            x -= Int(totalSize.width);
                        }
                    
                    case .Center:
                        x = Int(currentViewSize.width) / 2;
    
                        if (self.layout == Layout.Vertical)
                        {
                            x -= Int(view.frame.size.width) / 2;
                        }
    
                        if (self.layout == Layout.Horizontal)
                        {
                            x -= Int(totalSize.width) / 2;
                        }
    
                }
    
    
                if (previousView != nil)
                {
                    if (self.layout == Layout.Horizontal)
                    {
                        x = Int(previousView!.frame.origin.x) + Int(previousView!.frame.size.width) + self.gap;
                    }
    
                    if (self.layout == Layout.Vertical)
                    {
                        y = Int(previousView!.frame.origin.y) + Int(previousView!.frame.size.height) + self.gap;
                    }
                }
    
                view.frame.origin = CGPoint(x: x, y: y);
    
                previousView = view;
            }
        }
    
    }
    
    
    public func freeHeight() -> Int
    {
        let subViewsSize:CGSize = self.totalSubViewsSize();
    
        return self.bounds.size.height - subViewsSize.height - self.padding * 2 - self.gap;
    }
    
    public func freeWidth() -> Int
    {
        let subViewsSize:CGSize = self.totalSubViewsSize();
    
        return self.bounds.size.width - subViewsSize.width - self.padding * 2 - self.gap;
    }

    

}
