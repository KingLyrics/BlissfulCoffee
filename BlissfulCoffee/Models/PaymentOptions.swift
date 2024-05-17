//
//  PaymentOptions.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 17/05/2024.
//

import Foundation

enum PaymentOptions:String,CaseIterable{
    case wallet = "Wallet"
    case bankTransfer = "Bank Transfer"
    case onDelivery = "On Delivery Payment"
    
    var initialValue:Double{
        switch self{
        case .wallet:
            return 20.0
        default:
            return 0
            
        }
    }
    
    var imageName:String{
        switch self {
        case .wallet:
            return "banknote.fill"
        case .bankTransfer:
            return "arrowshape.turn.up.forward.circle.fill"
        case .onDelivery:
            return "car.fill"
        }
    }
}
