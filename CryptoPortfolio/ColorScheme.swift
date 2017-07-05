//
//  ColorScheme.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

struct ColorScheme {
    static let navigationBarForegroundColor = UIColor.white
    static let navigationBarBackgroundColor = UIColor.colorWithHex(hex: ColorName.Green)
    
    static let pickerBackgroundColor = UIColor.white
    static let toolBarTintColor = UIColor.colorWithHex(hex: ColorName.Green)
    
    fileprivate struct ColorName {
        static let Green = "55B949"
    }
}
