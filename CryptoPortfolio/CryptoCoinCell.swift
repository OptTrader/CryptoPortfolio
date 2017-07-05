//
//  CryptoCoinCell.swift
//  CryptoPortfolio
//
//  Created by Chris Kong on 7/5/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

class CryptoCoinCell: UITableViewCell {
    
    @IBOutlet weak var coinLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentChangeLabel: UILabel!
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}

//static var nib:UINib {
//    return UINib(nibName: identifier, bundle: nil)
//}
//
//static var identifier: String {
//    return String(describing: self)
//}
//
//override func awakeFromNib() {
//    super.awakeFromNib()
//
//    pictureImageView?.layer.cornerRadius = 40
//    pictureImageView?.clipsToBounds = true
//    pictureImageView?.contentMode = .scaleAspectFit
//    pictureImageView?.backgroundColor = UIColor.lightGray
//}
//
//override func setSelected(_ selected: Bool, animated: Bool) {
//    super.setSelected(selected, animated: animated)
//
//    // Configure the view for the selected state
//}
//
//override func prepareForReuse() {
//    super.prepareForReuse()
//
//    pictureImageView?.image = nil
//}

