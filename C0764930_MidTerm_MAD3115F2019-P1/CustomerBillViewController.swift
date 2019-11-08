//
//  CustomerBillViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerBillViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
   
    
    var custBill : Customer? = nil
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  (custBill?.billDictionary.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let t1 = sObj.returnCustObj(custId: Int(indexPath.row+1))
        let billCell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath) as! CustomizedTableViewCell
        //tblCell.textLabel?.text = t1?.fullName
        
        return billCell
    }

   
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var tblBillDetails: UITableView!
    @IBOutlet weak var lblEmail: UILabel!
    var sObj=Singleton.getObject()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //txtID.text=cust?.customerId
        
        lblId.text=custBill?.customerId.intToString()
        lblFullName.text=custBill?.fullName
        lblEmail.text=custBill?.email
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func NewBill(_ sender:UIBarButtonItem) {
       
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
