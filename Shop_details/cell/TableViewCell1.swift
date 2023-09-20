//
//  TableViewCell1.swift
//  Shop_details
//
//  Created by Prince's Mac on 04/09/23.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var popOptionLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        popOptionLBL.textColor = .gray
    }

}
