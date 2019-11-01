//
//  NewCustomerViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    let newCust=Singleton.getObject()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    

    @IBAction func btnAddCust(_ sender: UIButton) {
        
        let nfName=txtFirstName.text!
        let nlName=txtLastName.text!
        let nemail=txtEmail.text!
        
        newCust.addNewCust(fName: nfName, lName: nlName, cEmail: nemail)
         performSegue(withIdentifier: "Add Successful", sender: nil)
        
    }
    

}
