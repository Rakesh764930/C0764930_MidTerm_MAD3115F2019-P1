//
//  Bill.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill:IDisplay {
    
    func display() {
        
    }
    //  Variable Declaration
    var billId : Int
    var billDate : String
    //var amount : Float
    enum bTypes :String {
        case Internet
        case Mobile
        case Hydro
    }
    var billType : bTypes
    
    init(billId : Int , billDate : String, billType : bTypes) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    
    
}
