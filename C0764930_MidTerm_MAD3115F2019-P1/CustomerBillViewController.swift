//
//  CustomerBillViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerBillViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
   
    
    
   
    @IBOutlet weak var txtID: UILabel!
    @IBOutlet weak var txtFullname: UITextField!
    @IBOutlet weak var txtEname: UITextField!
    @IBOutlet weak var tblBillDetails: UITableView!
    
    var cust:Customer?=nil
    override func viewDidLoad() {
        super.viewDidLoad()

        //txtID.text=cust?.customerId
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return  tempSingleton.countReturn()
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         //  let t1=tempSingleton.returnCustObj(custId: Int(indexPath.row+1))
         let tblCell = tableView.dequeueReusableCell(withIdentifier: "SingletonCell", for: indexPath)
         tblCell.textLabel?.text = t1?.fullName
         return tblCell
       }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
