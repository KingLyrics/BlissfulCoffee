//
//  Coffee.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation
import SwiftUI

struct Coffee: Hashable, Identifiable, Equatable{
    let title:String
    let coffeType:CoffeTypes
    let price:Double
    let rating:Double
    let noOfComments:Int
    let description:String
    let sizes:[Sizes]
    let image:ImageResource
    var isFavorite:Bool = false
    var hasDiscount:Bool
    var discountAmount:Double?
    
    var id:String{
        title
    }
    
  
}


