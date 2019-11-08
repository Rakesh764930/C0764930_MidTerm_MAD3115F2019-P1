//
//  CustomizedTableViewCell.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomizedTableViewCell: UITableViewCell {
  
    @IBOutlet weak var lblBillID: UILabel!
    @IBOutlet weak var lblBillType: UILabel!
    
    @IBOutlet weak var lblBillAmount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
