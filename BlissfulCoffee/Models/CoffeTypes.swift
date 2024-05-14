//
//  CoffeTypes.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation

enum CoffeTypes:String,CaseIterable, Identifiable{
    case allCoffee = "All Coffee"
    case espresso
    case latte
    case cappuccino
    case americano
    case macchiato
    case mocha
    case flatWhite
    case coldBrew
    case frappuccino
    case ristretto
    
    var id:String{
        self.rawValue
    }
}
