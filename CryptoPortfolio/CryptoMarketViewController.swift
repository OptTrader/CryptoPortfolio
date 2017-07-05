//
//  CryptoMarketViewController.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

class CryptoMarketViewController: UIViewController {
    
    fileprivate let viewModel = CryptoCoinViewModel()
    
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = viewModel as UITableViewDataSource
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableViewAutomaticDimension
        
        tableView?.register(CryptoCoinCell.nib, forCellReuseIdentifier: CryptoCoinCell.identifier)
        
        
        
        NetworkManager.requestMarketLatestData(currencySymbol: "USD", onSuccess: { (data) in
            print(data)
        }) { (error) in
            print("Error")
        }
        
        
        
        
    }
    
}

