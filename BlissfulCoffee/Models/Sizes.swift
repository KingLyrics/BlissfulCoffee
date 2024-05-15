//
//  Sizes.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import Foundation

enum Sizes:String, CaseIterable, Identifiable {
    
    case Small = "S"
    case Medium = "M"
    case Large = "L"
    
    
    var id:String{
        self.rawValue
    }
}

