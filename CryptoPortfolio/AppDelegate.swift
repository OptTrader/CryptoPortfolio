//
//  AppDelegate.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        applyStyles()
        return true
    }
    
    private func applyStyles() {
        let navigationBar = UINavigationBar.appearance()
        // to check
        navigationBar.titleTextAttributes = [NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue): ColorScheme.navigationBarForegroundColor,
                                             NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue): Font.navigationBar]
        navigationBar.tintColor = ColorScheme.navigationBarForegroundColor
        navigationBar.barTintColor = ColorScheme.navigationBarBackgroundColor
    }
    
}
