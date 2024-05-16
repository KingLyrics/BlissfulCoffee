//
//  OrderPageView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 16/05/2024.
//

import SwiftUI

struct OrderPageView: View {
    
    let coffee:Coffee
    
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
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
                
                
                VStack(alignment:.leading, spacing: 8){
                    Text("Delivery Address")
                        .font(.custom("Sora-SemiBold", size: 16))
                    
                    VStack(alignment:.leading, spacing: 7){
                        Text("Bole Woreda 23")
                            .font(.custom("Sora-SemiBold", size: 14))
                        
                        Text("Kasanchis Business District, Addis Ababa, Ethiopia")
                            .font(.custom("Sora-Regular", size: 12))
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Order")
            .navigationBarTitleDisplayMode(.inline)
            
        }
      
    }
}

#Preview {
    OrderPageView(coffee: DeveloperPreview().coffees[0])
}
