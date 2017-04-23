//
//  PizzaTVC.swift
//  OrderTest
//
//  Created by Admin on 23/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PizzaTVC: UITableViewCell {
    
    @IBOutlet weak var lblPizaName: UILabel!
    
    
    @IBOutlet weak var lblPizzaDesc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
