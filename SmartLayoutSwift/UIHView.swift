//
//  UIHView.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIHView: AbstractLayoutView {

    init(frame: CGRect) {
        super.init(frame: frame)
        self.layout = Layout.Horizontal;
    }
    
    init()
    {
        super.init(frame:CGRectZero);
        self.layout = Layout.Horizontal;
    }

    

}
