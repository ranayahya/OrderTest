//
//  PizzaOrder.swift
//  HuliPizza
//
//  Created by Admin on 22/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PizzaOrder: NSObject {
    
    
    var pizzaOrder: String
    var pizzaOrderDescription: String
    
    
    
    
    override init()
    {
        pizzaOrder = ""
        pizzaOrderDescription = ""
        
        
    }
    
    init(pizzaname:String, pizzadescription:String)
        
    {
        
        pizzaOrder = pizzaname
        pizzaOrderDescription = pizzadescription
        
        
    }
    
    
}
