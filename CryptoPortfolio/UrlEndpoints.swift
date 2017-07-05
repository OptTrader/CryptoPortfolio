//
//  UrlEndpoints.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation

public class UrlEndpoints {
    
    class func endpointForCoinMarketCapRateApi(_ currencySymbol: String) -> String {
        let baseUrl = "https://api.coinmarketcap.com/v1/ticker/?convert="
        let endpoint = baseUrl + "\(currencySymbol)"
        return endpoint
    }
}
