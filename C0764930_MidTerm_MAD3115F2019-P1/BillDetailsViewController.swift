//
//  BillDetailsViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
var billObject: Bill? = nil
    
    
    @IBOutlet weak var txtBillId: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtNew1: UITextField!
    @IBOutlet weak var txtNew2: UITextField!
    @IBOutlet weak var txtNew3: UITextField!
    @IBOutlet weak var txtNew4: UITextField!
    @IBOutlet weak var lblNew1: UILabel!
    @IBOutlet weak var lblNew2: UILabel!
    @IBOutlet weak var lblNew3: UILabel!
    @IBOutlet weak var lblNew4: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtBillId.text = billObject?.billId.intToString()
        txtBillType.text = billObject?.billType.rawValue
        txtBillDate.text = billObject?.billDate
        
      
        
        // Do any additional setup after loading the view.
    
    
    


        
        
        if billObject!.billType.rawValue == "Mobile"{
            
            
            lblNew1.isHidden = false
            lblNew1.text = "Manufacturer Name"
            
            lblNew2.isHidden = false
            lblNew2.text = "Plan Name"
            
            lblNew3.isHidden = false
            lblNew3.text = "Minutes Used"
            
            lblNew4.isHidden = false
            lblNew4.text = "Internet Used"
            
            let m1 = billObject as! MobileBill
            txtNew1.isHidden = false
            txtNew1.text = m1.manufacturerName
            
            txtNew2.isHidden = false
            txtNew2.text = m1.planName
            
            txtNew3.isHidden = false
            txtNew3.text = m1.minutesUsed.intToString()
            
            txtNew4.isHidden = false
            txtNew4.text = m1.internetUsed.internetGbs()
            txtBillAmount.isHidden=false
            txtBillAmount.text=m1.billAmount.amountString()
           
            
        }
        
        if billObject!.billType.rawValue == "Internet"{
            
            lblNew1.isHidden = false
            lblNew1.text = "Provider Name"
            
            lblNew2.isHidden = false
            lblNew2.text = "Data Used"
            
            let i1 = billObject as! InternetBill
            txtNew1.isHidden = false
            txtNew1.text = i1.providerName
            
            txtNew2.isHidden = false
            txtNew2.text = i1.gbUsed.internetGbs()
            txtBillAmount.isHidden=false
            txtBillAmount.text=i1.billAmount.amountString()
            
        }
        
         if billObject!.billType.rawValue == "Hydro"{
                   
                   lblNew1.isHidden = false
                   lblNew1.text = "Agency Name"
                   
                   lblNew2.isHidden = false
                   lblNew2.text = "Unit Used"
                   
                   let h1 = billObject as! HydroBill
                   txtNew1.isHidden = false
            txtNew1.text = h1.agencyName
                   
                   txtNew2.isHidden = false
            txtNew2.text = h1.unitConsumed.intToString()
            txtBillAmount.isHidden=false
            txtBillAmount.text=h1.billAmount.amountString()
                   
               }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    }}
