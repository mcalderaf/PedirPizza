//
//  Pizza.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 06/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import Foundation

class Pizza: NSObject {
    var tamaño: String=""
    var masa: String=""
    var queso: String=""
    var ingredientes:String=""
    
    override init() {
        super.init()
    }

    init(t:String,m:String,q:String,i:String){
        tamaño=t
        masa=m
        queso=q
        ingredientes=i
    }
}