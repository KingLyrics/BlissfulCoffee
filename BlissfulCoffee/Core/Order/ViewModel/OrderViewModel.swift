//
//  OrderViewModel.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 17/05/2024.
//

import Foundation

class OrderViewModel:ObservableObject{
    @Published var previousDeliveryFee: Double = 2.0
    @Published var deliveryFee: Double = 1.0
    @Published var itemCount: Int = 1
    
    let coffee:Coffee
    
    init( coffee: Coffee) {
        self.coffee = coffee
    }
    
    var coffeePrice:Double{
        return Double(itemCount ) * coffee.price
    }
    
    var totalPrice:Double{
        return coffeePrice + deliveryFee
    }
}
