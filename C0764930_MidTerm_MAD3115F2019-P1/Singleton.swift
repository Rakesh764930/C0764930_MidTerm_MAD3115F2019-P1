//
//  Singleton.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Singleton : NSObject {
    
    private var customerDict=Dictionary<Int,Customer>()
    
    private override init(){
        
    }
    private static var singletonObj=Singleton()
    
    
    internal static func getObject() ->Singleton
    {
        return singletonObj
    }
    
    
    func addNewCust(fName:String,lName:String,cEmail:String)  {
        let c1=customerDict.count+1
        let c2=Customer(customerID: c1, firstName: fName, lastName:lName , email: cEmail)
        
        self.addCustomer(c: c2)
        
    }
    func returnCustObj(custId:Int)->Customer?
    {
        for(key,value) in customerDict
        {
            if key==custId
            {
                return value
            }
        }
        return nil
    }
    
    func countReturn()->Int
    {
        return customerDict.count
    }
    
    
    
    func defaultCustomer()  {
        
        let i1 = InternetBill(providerName : "Rogers", gbUsed : 500, billAmount : 56.50, billId : 1 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Internet)
        let m1 = MobileBill(manufacturerName:"Galaxy", planName:"Prepaid Talk", phoneNumber:6464647484, internetUsed:5, minutesUsed:356, billAmount:250.0, billId : 2, billType : Bill.bTypes.Mobile, billDate: "Wednesday, 19 June, 2019")
        let h1 = HydroBill(billID : 3 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Hydro, agencyName : "Planet Energy", unitConsumed : 29 , billAmount : 54.35)
        let cust1 = Customer(customerID : 1, firstName : "Rakesh", lastName : "Kumar", email : "Rakeshkumar92215@gmail.com", billDictionary: [i1.billId : i1, m1.billId : m1, h1.billId : h1])
        
        
        
        
        // Customer 2
        let i2 = InternetBill(providerName : "Fido", gbUsed : 600, billAmount : 70.00, billId : 4 , billDate : "Wednesday, 29 June, 2019", billType : Bill.bTypes.Internet)
        let m2 = MobileBill(manufacturerName:"Apple", planName:"Prepaid Talk + Messages", phoneNumber:6476954211, internetUsed:6, minutesUsed:124, billAmount:80.00, billId : 5, billType : Bill.bTypes.Mobile, billDate: "Friday, 19 June, 2019")
        let cust2 = Customer(customerID : 2, firstName : "Ajeet", lastName : "Singh", email : "ajeets110@gmail.com", billDictionary: [i2.billId : i2, m2.billId : m2])
        let cust3 = Customer(customerID : 3, firstName : "Gurpreet", lastName : "Singh", email : "gurpreetsingh26@gmail.com")
        let cust4 = Customer(customerID : 4, firstName : "Kuldeep", lastName : "Bamrah", email : "Kuldeep0@gmail.com")
        let cust5 = Customer(customerID : 5, firstName : "Ritik", lastName : "Jagpal", email : "Ritikjagpal123@gmail.com")
        
        addCustomer(c: cust1)
        addCustomer(c: cust2)
        addCustomer(c: cust3)
        addCustomer(c: cust4)
        addCustomer(c: cust5)
        
        
    }
    
    func addCustomer(c:Customer){
        
        customerDict.updateValue(c, forKey: c.customerId)
        
    }
    func printCustData(){
        for key in customerDict.values
        {
            print(key.fullName)
        }
    }
    
    
    
}
