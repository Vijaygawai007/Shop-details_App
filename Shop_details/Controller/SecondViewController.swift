//
//  SecondViewController.swift
//  Shop_details
//
//  Created by Prince's Mac on 04/09/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var DataFromFirstVC1 : String?
    var DataFromFirstVC2 : String?
    var DataFromFirstVC3 : String?
    var DataFromFirstVC4 : String?
    var DataFromFirstVC5 : String?
    var DataFromFirstVC6 : String?
    var DataFromFirstVC7 : String?
    var DataFromFirstVC8 : String?
    var DataFromFirstVC9 : String?
    var DataFromFirstVC10 : String?
    
    @IBOutlet weak var shopTypeLBL: UILabel!
    @IBOutlet weak var dairyLBL: UILabel!
    @IBOutlet weak var addressLBL2: UILabel!
    @IBOutlet weak var startTIMELBL: UILabel!
    @IBOutlet weak var closeTIMELBL: UILabel!
    @IBOutlet weak var monthLBL2: UILabel!
    @IBOutlet weak var minBillLBL: UILabel!
    @IBOutlet weak var chargesForMINLBL: UILabel!
    @IBOutlet weak var yesLBL: UILabel!
    @IBOutlet weak var noLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shopTypeLBL.text = DataFromFirstVC1
        self.dairyLBL.text = DataFromFirstVC7
        self.addressLBL2.text = DataFromFirstVC2
        self.startTIMELBL.text = DataFromFirstVC3
        self.closeTIMELBL.text = DataFromFirstVC4
        self.monthLBL2.text = DataFromFirstVC8
        self.minBillLBL.text = DataFromFirstVC6
        self.chargesForMINLBL.text = DataFromFirstVC5
        
        
        
//        if yesLBL.isHidden == true {
//            self.noLBL.text = DataFromFirstVC10
//        }else if noLBL.isHidden == true {
//            self.yesLBL.text = DataFromFirstVC9
//        }
    }
}
