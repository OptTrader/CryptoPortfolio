//
//  ViewController.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.coinmarketcap.com/v1/ticker/?convert=USD"
     
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            // check for err
            // check response status 200 OK
            
            guard let data = data else { return }
            
            do {
                let cyptoCoins = try JSONDecoder().decode([CryptoCoin].self, from: data)
                print(cyptoCoins)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
        }.resume()
        
        
    }

    

}

