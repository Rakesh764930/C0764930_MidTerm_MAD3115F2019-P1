//
//  Customer.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer {
    //  Variable declaration
    var customerId : Int
    var firstName : String
    var lastName : String
    var fullName : String {
        return firstName + " " + lastName
    }
    var email : String
    var billDictionary = [Int:Bill]()
    
    init(customerID : Int, firstName : String, lastName : String, email : String, billDictionary : [Int:Bill]){
          self.customerId = customerID
          self.firstName = firstName
          self.lastName = lastName
          self.email = email
          self.billDictionary = billDictionary
      }
    init(customerID : Int, firstName : String, lastName : String, email : String){
        self.customerId = customerID
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
      
    }


}
