//
//  CryptoCoin.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation

struct CryptoCoin: Decodable {
    let id: String
    let name: String
    let symbol: String
    let price_usd: String?
    let percent_change_24h: String?
}
