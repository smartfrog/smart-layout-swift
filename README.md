SMART LAYOUT (SWIFT)
====================

Smart Layout helps you to create your IOS screens programmatically. If you found IOS AutoLayout too complex, Smart Layout is made for you.

It provides you three types of UIView that you can use to arrange easily elements of your screen. Each view from smart layout contains an backgroundImage that allows you to put an image in the background of your container.


  * UIHView / UIVView: Arranges the sub views horizontaly / vertically. You can specify vertical align, horizontal align, gap between elements, padding.
  
  * UIAbsolutView: Arranges the sub views independently of each-other. You add the subview with the following constraints : left, right, top, bottom. That constraint represent the space between the sub view you are adding and the border of it parent view. 

Installation
------------

Just copy files present in the "classes" group of the sample project into your own project.


How to use it ?
---------------


### UIHView and UIVView

    	[self.setBackgroundImage("background");
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

### UIAbsolutView

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


Reporting issues or requests for improvement
--------------------------------------------

Please report problems on the [GitHub repository](https://github.com/smartfrog/smart-layout-swift/issues).

License
-------
Smart Layout is licensed under the terms of the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

Credits
-------
Smart Layout is brought to you by the [SMARTFROG](http://smartfrog.fr) Team.
