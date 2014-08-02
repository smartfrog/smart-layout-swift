//
//  UIAbsolutViewDemoViewController.swift
//  SmartLayoutSwift
//
//  Created by Frédéric DE MATOS on 02/08/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

class UIAbsolutViewDemoViewController: UIViewController {

    init()
    {
        super.init(nibName: nil, bundle: nil);
        
        self.title = "UIAbsolutView";
        
    }
    override func loadView()
    {
        self.view = UIAbsolutViewDemoView();
    }
}
