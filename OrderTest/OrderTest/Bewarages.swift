//
//  Bewarages.swift
//  HuliPizza
//
//  Created by Admin on 23/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class Bewarages: NSObject {
    
    
    var bewarageName: String
    var bewarageDescription: String
    
    
    
    
    override init()
    {
        bewarageName = ""
        bewarageDescription = ""
        
        
    }
    
    init(bewaragename:String, bewaragedescription:String)
        
    {
        
        bewarageName = bewaragename
        bewarageDescription = bewaragedescription
        
        
    }
    
    
    
}
