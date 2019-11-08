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
         //performSegue(withIdentifier: "Add Successful", sender: nil)
         let sb1 = UIStoryboard(name: "Main", bundle: nil)
             let NewCustomerVC = sb1.instantiateViewController(withIdentifier: "NewCustomerVC") as! NewCustomerViewController
           navigationController?.pushViewController(NewCustomerVC, animated: true)
    }
    
    // S e t t i n g   B a c k g ro  u n d     C o l o r
    

    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }

}
