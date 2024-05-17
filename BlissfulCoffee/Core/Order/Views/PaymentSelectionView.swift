//
//  PaymentSelectionView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 17/05/2024.
//

import SwiftUI

struct PaymentSelectionView: View {
    let paymentOption:PaymentOptions
    var walletAmount: Double? = 20.00 // Optional wallet amount
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: paymentOption.imageName)
            VStack(alignment:.leading, spacing: 5){
                Text(paymentOption.rawValue)
                if let walletAmount = walletAmount, paymentOption == .cash {
                    Text("$\(String(format: "%.2f", walletAmount))")
                        .font(.custom("Sora-SemiBold", size: 12))
                }           
            }
            .font(.custom("Sora-SemiBold", size: 14))
        }
    }
}


#Preview {
    VStack{
        PaymentSelectionView(paymentOption: .cash)
        PaymentSelectionView(paymentOption: .onDelivery)
    }
}
