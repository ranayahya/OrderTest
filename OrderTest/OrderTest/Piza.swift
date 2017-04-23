//
//  Piza.swift
//  HuliPizza
//
//  Created by Admin on 22/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit


class Piza: NSObject {
    
    var pizzaName: String
    var pizzaDescription: String
    
    
    
    
    override init()
    {
        pizzaName = ""
        pizzaDescription = ""
        
        
    }
    
    init(pizzaname:String, pizzadescription:String)
        
    {
        
        pizzaName = pizzaname
        pizzaDescription = pizzadescription
        
        
    }
    
}



