//
//  AppDelegate.swift
//  SmartLayoutSwift
//
//  Created by Frédéric DE MATOS on 02/08/2014.
//  Copyright (c) 2014 smartfrog. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        
        let tabBarController:UITabBarController = UITabBarController();
        
        let topLevelControllers:[UIViewController] = [UIHViewDemoViewController(), UIVViewDemoViewController(), UIAbsolutViewDemoViewController()];

        
        tabBarController.setViewControllers(topLevelControllers, animated: false);
        tabBarController.selectedIndex = 0;
        
        
        self.window!.rootViewController = tabBarController;
        
        self.window!.backgroundColor = UIColor.whiteColor();
        self.window!.makeKeyAndVisible();
        
        
        return true
    }



}

