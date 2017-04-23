//
//  Desserts.swift
//  HuliPizza
//
//  Created by Admin on 23/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class Desserts: NSObject {
    
    
    var dessertName: String
    var dessertDescription: String
    
    
    
    
    override init()
    {
        dessertName = ""
        dessertDescription = ""
        
        
    }
    
    init(dessertname:String, dessertdescription:String)
        
    {
        
        dessertName = dessertname
        dessertDescription = dessertdescription
        
        
    }
    
    
}
