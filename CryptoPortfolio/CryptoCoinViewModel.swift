//
//  CryptoCoinViewModel.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation
import UIKit

protocol CryptoCoinViewModelItem {
    
    var rowCount: Int { get }
}

class CryptoCoinViewModel: NSObject {
    var items = [CryptoCoinViewModelItem]()
    
    override init() {
        super.init()
        
    }
}

extension CryptoCoinViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CryptoCoinCell.identifier, for: indexPath) as? CryptoCoinCell {
//            cell.item = item
            return cell
        }
        return UITableViewCell()
    }
}



