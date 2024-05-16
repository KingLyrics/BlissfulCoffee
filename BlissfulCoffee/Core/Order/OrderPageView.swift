//
//  OrderPageView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 16/05/2024.
//

import SwiftUI

struct OrderPageView: View {
    
    @State private var pageView:String = "Deliver"
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(spacing:60){
                    Text("Deliver")
                        .foregroundStyle(pageView == "Deliver" ? .offWhite : .black)
                        .font(pageView == "Deliver" ? .custom("Sora-SemiBold", size: 16) : .custom("Sora-Light", size: 16))
                        .frame(width: 153, height: 35)
                        .background( pageView == "Deliver" ?  .darkBrown : .gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .onTapGesture {
                            pageView = "Deliver"
                        }
                    
                    Text("Pickup")
                       
                    
                }
                .frame(width: 310, height: 43)
                .padding(.vertical,3)
                .background(.offGray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.top)
//
//                Text("Deliver")
//                    .foregroundColor(selectedOption == "Deliver" ? .white : .black)
//                    .font(.custom("Sora-SemiBold", size: 16))
//                    .frame(width: 153, height: 35)
//                    .background(selectedOption == "Deliver" ? Color.brown : Color.gray)
//                    .clipShape(RoundedRectangle(cornerRadius: 8))
//                    .onTapGesture {
//                        selectedOption = "Deliver"
//                    }
//
//                Text("Pickup")
//                    .foregroundColor(selectedOption == "Pickup" ? .white : .black)
//                    .font(.custom("Sora-SemiBold", size: 16))
//                    .frame(width: 153, height: 35)
//                    .background(selectedOption == "Pickup" ? Color.brown : Color.gray)
//                    .clipShape(RoundedRectangle(cornerRadius: 8))
//                    .onTapGesture {
//                        selectedOption = "Pickup"
//                    }
                
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
