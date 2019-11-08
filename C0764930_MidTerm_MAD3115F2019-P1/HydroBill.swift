//
//  HydroBill.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class HydroBill:Bill{
    
    //  Variable declaration
    var agencyName : String
    var unitConsumed : Int
    var billAmount : Float
    
    //  initializer
    init(billID : Int , billDate : String, billType : bTypes, agencyName : String, unitConsumed : Int , billAmount : Float) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.billAmount = billAmount
        super.init(billId : billID, billDate : billDate, billType : billType)
        
    }
    
    //  override
    override func display() {
        print("*****************************")
        print("       Bill Details      ")
        print("*****************************")
        print("Bill ID : \(billId)")
        print("BillDate : \(billDate)")
        print("Bill Type : \(billType)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitConsumed)")
        print("Bill Amount : $\(billAmount)")
    }
}
