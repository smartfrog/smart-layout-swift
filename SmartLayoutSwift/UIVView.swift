//
//  UIVView.swift
//  smartgameengine
//
//  Created by Frédéric De Matos on 25/07/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIVView: AbstractLayoutView {

    init(frame: CGRect) {
        super.init(frame: frame)
        self.layout = Layout.Vertical;
    }
    
    init()
    {
        super.init(frame:CGRectZero);
        self.layout = Layout.Vertical;
    }

}
