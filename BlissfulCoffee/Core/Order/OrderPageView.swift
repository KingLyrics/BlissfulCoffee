//
//  OrderPageView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 16/05/2024.
//

import SwiftUI

struct OrderPageView: View {
    
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(spacing:50){
                    Text("Deliver")
                        .foregroundStyle( .offWhite)
                        .font( .custom("Sora-SemiBold", size: 16))
                        .frame(width: 153, height: 35)
                        .background(.darkBrown)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Text("Pickup")
                        .font( .custom("Sora-Regular", size: 16))
                }
                .frame(width: 310, height: 43)
                .padding(.vertical,3)
                .background(.offGray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.top)

                
                Spacer()
            }
            .navigationTitle("Order")
            .navigationBarTitleDisplayMode(.inline)
            
        }
      
    }
}

#Preview {
    OrderPageView()
}
