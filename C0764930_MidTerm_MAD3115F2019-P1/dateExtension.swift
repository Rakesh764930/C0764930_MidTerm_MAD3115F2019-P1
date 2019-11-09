//
//  dateExtension.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Date
{
    public func foramttedDate() -> String
    {
        
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        // in the format "Thursday, 20 june, 2019
        var d1 = dateFormatter.string(from: self)
        return d1
}
}
