//
//  ViewController.swift
//  Shop_details
//
//  Created by Prince's Mac on 03/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var arr = ["Dairy","News Paper","Grocery (Kirana)","water supplier","Tiffin / Meal service","Fruits & vegetables"]
    var months = ["january","February","March","April","May","june","July","August","Septamber","Octomber","Novenber","December"]
    
    //MARK: LABELS AND TEXTFIELD OUTLETS.
    @IBOutlet weak var shopDetailsLBL: UILabel!
    @IBOutlet weak var dmartTF: UITextField!
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var openTimeTF: UITextField!
    @IBOutlet weak var closeTimeTF: UITextField!
    @IBOutlet weak var minimumBillAmountTF: UITextField!
    @IBOutlet weak var chagesBelowTF: UITextField!
    @IBOutlet weak var minLBL: UILabel!
    @IBOutlet weak var chargLBL: UILabel!
    @IBOutlet weak var gstLBL: UILabel!
    
    //MARK: BUTTONS OUTLETS.
    @IBOutlet weak var dairyBTNout: UIButton!
    @IBOutlet weak var monthlyBTNout: UIButton!
    @IBOutlet weak var gstYesBTNout: UIButton!
    @IBOutlet weak var gstNoBTNout: UIButton!
    @IBOutlet weak var updateBTNout: UIButton!
    @IBOutlet weak var popUpOKBTNout: UIButton!
    @IBOutlet weak var monthlyOKBTNout: UIButton!
    
    //MARK: POP UP TABLE OUTLETS.
    @IBOutlet weak var popUpListTABEL: UITableView!
    @IBOutlet weak var monthlyTable: UITableView!
    
    //MARK: POP UP VIEW OUTLETS.
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var monthlyPoP: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    // MARK: FUNCTION FOR CONFIGURING THE UI ELEMENTS.
    func configure(){
        monthlyOKBTNout.layer.borderWidth = 0.2
        popUpOKBTNout.layer.borderWidth = 0.2
        shopDetailsLBL.layer.borderWidth = 0.2
        dmartTF.layer.borderWidth = 0.2
        dairyBTNout.layer.borderWidth = 0.2
        addressTF.layer.borderWidth = 0.2
        openTimeTF.layer.borderWidth = 0.2
        closeTimeTF.layer.borderWidth = 0.2
        monthlyBTNout.layer.borderWidth = 0.2
        minLBL.layer.borderWidth = 0.2
        minimumBillAmountTF.layer.borderWidth = 0.2
        chargLBL.layer.borderWidth = 0.2
        chagesBelowTF.layer.borderWidth = 0.2
        gstLBL.layer.borderWidth = 0.2
        gstYesBTNout.layer.borderWidth = 0.2
        gstNoBTNout.layer.borderWidth = 0.2
        
        gstYesBTNout.titleLabel?.textColor = .gray
        gstNoBTNout.titleLabel?.textColor = .gray
        popUpView.layer.borderWidth = 0.3
        monthlyPoP.layer.borderWidth = 0.3
        
        popUpListTABEL.dataSource = self
        popUpListTABEL.delegate = self
        monthlyTable.dataSource = self
        monthlyTable.delegate = self
        
        popUpView.isHidden = true
        monthlyPoP.isHidden = true
        
        gstNoBTNout.isSelected = false
        gstYesBTNout.isSelected = false
        
        chagesBelowTF.text = ""
        minimumBillAmountTF.text = ""
        openTimeTF.text = ""+"AM"
        closeTimeTF.text = ""+"PM"
        dmartTF.text = ""
        addressTF.text = ""
        dmartTF.text = "Dmart"
        
        gstYesBTNout.isSelected = false
        gstNoBTNout.isSelected = false
    }
    //MARK: BUTTONS ACTIONS.
    @IBAction func dairyBTNclick(_ sender: UIButton) {
        popUpView.isHidden = !popUpView.isHidden
        monthlyPoP.isHidden = true
    }
    @IBAction func popOKBTN(_ sender: Any) {
        popUpView.isHidden = !popUpView.isHidden
    }
    @IBAction func monthlyBTNclick(_ sender: Any) {
        monthlyPoP.isHidden = !monthlyPoP.isHidden
    }
    @IBAction func monthlyOKBTN(_ sender: Any) {
        monthlyPoP.isHidden = !monthlyPoP.isHidden
    }
    @IBAction func gstYesBTN(_ sender: Any) {
        if gstYesBTNout.isSelected == true {
            gstYesBTNout.titleLabel?.textColor = .black
        }else{
            gstNoBTNout.titleLabel?.textColor = .gray
        }
    }
    @IBAction func gstNoBTN(_ sender: Any) {
        if gstNoBTNout.isSelected == true {
            gstNoBTNout.titleLabel?.textColor = .black
        }else{
            gstYesBTNout.titleLabel?.textColor = .gray
        }
    }
    @IBAction func updateDetailsTN(_ sender: Any) {
        if chagesBelowTF.text?.isEmpty ?? true ||
            minimumBillAmountTF.text?.isEmpty ?? true ||
            openTimeTF.text?.isEmpty ?? true ||
            closeTimeTF.text?.isEmpty ?? true ||
            dmartTF.text?.isEmpty ?? true ||
            addressTF.text?.isEmpty ?? true || addressTF.text?.isEmpty ?? true {
            print("fill all the textfield..!")
        }else{
            let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
            let passData1 = self.dmartTF.text
            let passData2 = self.addressTF.text
            let passData3 = self.openTimeTF.text
            let passData4 = self.closeTimeTF.text
            let passData5 = self.chagesBelowTF.text
            let passData6 = self.minimumBillAmountTF.text
            let passData7 = self.dairyBTNout.titleLabel?.text
            let passData8 = self.monthlyBTNout.titleLabel?.text
            let passData9 = self.gstYesBTNout.titleLabel?.text
            let passData10 = self.gstNoBTNout.titleLabel?.text
            print("navigate done...! ")
            
            SecondViewController.DataFromFirstVC1 = passData1
            SecondViewController.DataFromFirstVC2 = passData2
            SecondViewController.DataFromFirstVC3 = passData3
            SecondViewController.DataFromFirstVC4 = passData4
            SecondViewController.DataFromFirstVC5 = passData5
            SecondViewController.DataFromFirstVC6 = passData6
            SecondViewController.DataFromFirstVC7 = passData7
            SecondViewController.DataFromFirstVC8 = passData8
            SecondViewController.DataFromFirstVC9 = passData9
            SecondViewController.DataFromFirstVC10 = passData10
            
            self.navigationController?.pushViewController(SecondViewController, animated: true)
        }
        
    }
}
//MARK: UITABLEVIEW DATASOURSE AND UITABLEVIEW DELEGATE PROTOCOL STUBS EXTENSION.
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == popUpListTABEL {
            return arr.count
        }else if tableView == monthlyTable {
            return months.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == popUpListTABEL {
            let TableViewCell1 = popUpListTABEL.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath)as! TableViewCell1
            TableViewCell1.popOptionLBL.text = arr[indexPath.row]
            return TableViewCell1
        }else if tableView == monthlyTable{
            let TableViewCell2 = monthlyTable.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath)as! TableViewCell2
            TableViewCell2.monthlyLBL.text = months[indexPath.row]
            return TableViewCell2
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == popUpListTABEL {
            dairyBTNout.titleLabel?.text = arr[indexPath.row]
        }else if tableView == monthlyTable {
            monthlyBTNout.titleLabel?.text = months[indexPath.row]
        }
    }
}
extension ViewController : UITableViewDelegate {
}

