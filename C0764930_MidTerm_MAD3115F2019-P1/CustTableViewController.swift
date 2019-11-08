//
//  CustTableViewController.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    @IBOutlet weak var tblCustomer: UITableView!
    
    var tempSingleton=Singleton.getObject()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempSingleton.countReturn()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let t1=tempSingleton.returnCustObj(custId: Int(indexPath.row+1))
        let tblCell = tableView.dequeueReusableCell(withIdentifier: "SingletonCell", for: indexPath)
        tblCell.textLabel?.text = t1?.fullName
        return tblCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tblCustomer.delegate=self
        tblCustomer.dataSource=self
        tempSingleton.defaultCustomer()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func AddNewCust(_ sender: UIBarButtonItem) {
        
        
        let newStBd = UIStoryboard(name: "Main", bundle: nil)
        let NewCustVC = newStBd.instantiateViewController(withIdentifier: "NewCustVC") as! NewCustomerViewController
        navigationController?.pushViewController(NewCustVC, animated: true)
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
                          let newStBd = UIStoryboard(name: "Main", bundle: nil)
                                   let CustTableVc = newStBd.instantiateViewController(withIdentifier: "CustomerBillVC") as! CustomerBillViewController
                                   navigationController?.pushViewController(CustTableVc, animated: true)
        
        
        
//           if #available(iOS 13.0, *) {
//               let stb2 = (storyboard?.instantiateViewController(identifier: "CustomerBillVC") as? CustomerBillViewController)!
//               self.navigationController?.pushViewController(stb2, animated: true)
//           } else {
//               // Fallback on earlier versions
//           }
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
