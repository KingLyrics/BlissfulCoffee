//
//  PaymentSelectionView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 17/05/2024.
//

import SwiftUI

struct PaymentSelectionView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedPaymentOption:PaymentOptions
    var walletAmount: Double? = 20.00
    let paymentTypes:[PaymentOptions] = PaymentOptions.allCases
    
    
    var body: some View {
        NavigationStack{
            List(paymentTypes, id:\.self){paymentOption in
                Button(action: {
                    selectedPaymentOption = paymentOption
                    dismiss()
                }) {
                    HStack{
                        Image(systemName: paymentOption.imageName)
                        Text(paymentOption.rawValue)
                            .font(.custom("Sora-SemiBold", size: 18))
                            .foregroundStyle(.ashBlack)
                        Spacer()
                       
                        if paymentOption == .cash{
                            Text("$\(String(format: "%.2f", walletAmount ?? 0))")
                        }
                        
                    }
                    .foregroundStyle(.darkBrown)
                    .padding(.vertical, 10)
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Payement Methods")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItem(placement: .cancellationAction) {
                    Button("Return"){
                        dismiss()
                    }
                }
            
                
            }
            
        }
    }
}


#Preview {
    PaymentSelectionView(selectedPaymentOption: .constant(.cash))
}
