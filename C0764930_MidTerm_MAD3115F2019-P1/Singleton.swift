//
//  Singleton.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
////
//
import UIKit

class Singleton: NSObject {
    
    private var custDict:[Int:Customer]

    private override init() {

    }
    private static var singletonObj=Singleton()


    internal static func getObject() ->Singleton
    {
        return singletonObj
    }


    func addNewCust(cId:Int ,fName:String,lName:String,cEmail:String)  {
        let c1=custDict.count+1
        let c2=Customer(customerID: c1, firstName: fName, lastName:lName , email: cEmail)
        
        self.addCustomer(c: c2)
        
    }
    func returnCustObj(custId:Int)->Customer?
    {
        for(key,value) in custDict
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
        return custDict.count
    }
    
    
    
    func defaultCustomer()  {

        var cust1 = Customer(customerID : 1, firstName : "Rakesh", lastName : "Kumar", email : "Rakeshkumar92215@gmail.com")
        var cust2 = Customer(customerID : 2, firstName : "Ajeet", lastName : "Singh", email : "ajeets110@gmail.com")
        var cust3 = Customer(customerID : 3, firstName : "Gurpreet", lastName : "Singh", email : "gurpreetsingh26@gmail.com")
        var cust4 = Customer(customerID : 4, firstName : "Kuldeep", lastName : "Bamrah", email : "Kuldeepbamrah0@gmail.com")
        var cust5 = Customer(customerID : 5, firstName : "Ritik", lastName : "Jagpal", email : "Ritikjagpal123@gmail.com")
    }

    func addCustomer(c:Customer){

        custDict.updateValue(c, forKey: c.customerId)
        
}
    func printCustData(){
        for key in custDict.values
        {
            print(key.fullName)
        }
    }
    
    
    
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


