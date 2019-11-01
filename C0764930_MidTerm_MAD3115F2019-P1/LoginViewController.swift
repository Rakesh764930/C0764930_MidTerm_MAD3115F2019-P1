//
//  ViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 //      o u t l e s t s
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
   
    @IBOutlet weak var outletRemember: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gblData = Singleton.getObject()
        gblData.defaultCustomer()
        // Do any additional setup after loading the view.
  
        txtUsername.text = UserDefaults.standard.string(forKey: "usnm")
        txtPassword.text = UserDefaults.standard.string(forKey: "pswd")
        
        outletRemember.isOn=true
        
    }

    
    
    
    @IBAction func btnLogin(_ sender: UIButton)
    {
        let usnm=txtUsername.text!
        let pswd=txtPassword.text!
        
        if usnm.count > 7
        {
            if outletRemember.isOn
            {
                
                UserDefaults.standard.set(usnm, forKey: "usnm")
                UserDefaults.standard.set(pswd, forKey: "pswd")
                
            }
            else{
                UserDefaults.standard.removeObject(forKey: "usnm")
                UserDefaults.standard.removeObject(forKey: "pswd")
            }
        
        if usnm == "Rks764930"
        {
            if pswd == "4141"
            {
                print("Login Successful")
                performSegue(withIdentifier: "MoveToCustomer", sender: nil)
                
            }else{
                print("Incorrect Password")
                 }
        }else{
            print("Incorrect Username")
            }
        
    }
    else{
    let alert = UIAlertController(title: "Invalid Username", message: "Please enter a valid Username", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
    
    self.present(alert, animated: true)
    
    }
    
}


}
        
 
    
