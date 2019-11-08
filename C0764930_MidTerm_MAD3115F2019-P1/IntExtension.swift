//
//  IntExtension.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Int{
    func concatUnits()->String
    {
        return "\(self) Units"
    }
    func conactGB() ->String
    {
        return " \(self) GB"
    }
    func concatMin() -> String
    {
        return " \(self) Minutes"
    }
    func intToString() -> String
    {
        return String(self)
    }
    
    
}
