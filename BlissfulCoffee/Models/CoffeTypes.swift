//
//  CoffeTypes.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation

enum CoffeTypes:String,CaseIterable, Identifiable{
    case allCoffee = "All Coffee"
    case espresso, americano, latte, cappuccino,mocha, macchiato
    
    var id:String{
        self.rawValue
    }
}
