//
//  UIVViewDemoViewController.swift
//  SmartLayoutSwift
//
//  Created by Frédéric DE MATOS on 02/08/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIVViewDemoViewController: UIViewController {

    init()
    {
        super.init(nibName: nil, bundle: nil);
        
        self.title = "UIVView";
        
    }
    override func loadView()
    {
        self.view = UIVViewDemoView();
    }

}
