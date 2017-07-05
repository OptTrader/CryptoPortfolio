//
//  NetworkManager.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation
import os.log

class NetworkManager: CoinMarketApiClientProtocol {
    static func requestMarketLatestData(currencySymbol: String, onSuccess: CoinMarketCapCallback?, onError: ErrorCallback?) {
        
        let urlString = UrlEndpoints.endpointForCoinMarketCapRateApi(currencySymbol)
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard err == nil else {
                onError?(ApiError.network(error: err!))
                os_log("Unable to get response.", log: OSLog.default, type: .debug)
                return
            }
            
            guard let responseData = data else {
                onError?(ApiError.apiProvidedError(reason: (err?.localizedDescription)!))
                os_log("Unable to receive data.", log: OSLog.default, type: .debug)
                return
            }
            
            do {
                let cryptoCoins = try JSONDecoder().decode([CryptoCoin].self, from: responseData)
                onSuccess?(cryptoCoins)
                
            } catch let jsonErr {
                onError?(ApiError.objectSerializationError(reason: jsonErr.localizedDescription))
                os_log("Unable to convert data to JSON.", log: OSLog.default, type: .debug)
                return
            }
        }.resume()
    }
    
}
//let jsonUrlString = "https://api.coinmarketcap.com/v1/ticker/?convert=USD"
//
//guard let url = URL(string: jsonUrlString) else { return }
//
//URLSession.shared.dataTask(with: url) { (data, response, err) in
//    // check for err
//    // check response status 200 OK
//
//    guard let data = data else { return }
//
//    do {
//        let cyptoCoins = try JSONDecoder().decode([CryptoCoin].self, from: data)
//        print(cyptoCoins)
//
//    } catch let jsonErr {
//        print("Error serializing json:", jsonErr)
//    }
//    }.resume()

