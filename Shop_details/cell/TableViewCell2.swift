//
//  TableViewCell2.swift
//  Shop_details
//
//  Created by Prince's Mac on 04/09/23.
//

import UIKit

class TableViewCell2: UITableViewCell {

    
    @IBOutlet weak var monthlyLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        monthlyLBL.textColor = .gray
        
    }

}
