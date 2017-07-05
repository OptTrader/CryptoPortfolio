//
//  CoinMarketCapApiClientProtocol.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation

typealias CoinMarketCapCallback = ([CryptoCoin]) -> Void

protocol CoinMarketApiClientProtocol {
    static func requestMarketLatestData(currencySymbol: String,
                                        onSuccess: CoinMarketCapCallback?,
                                        onError: ErrorCallback?)
}
