//
//  BewarageTVC.swift
//  OrderTest
//
//  Created by Admin on 23/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class BewarageTVC: UITableViewCell {
    
    @IBOutlet weak var lblBewarageName: UILabel!
    
    
    @IBOutlet weak var lblBewarageDescription: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
