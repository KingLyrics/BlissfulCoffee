//
//  OrderPageView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 16/05/2024.
//

import SwiftUI

struct OrderPageView: View {
    @State private var previousDeliveryFee:Double = 2.0
    @State private var deliveryFee:Double = 1.0
    @State private var itemCount:Int = 1
    
    let coffee:Coffee
    let maxLengthOfCharacters = 5
    
    var coffeeName: String
    
    init(coffee: Coffee) {
        self.coffee = coffee
        self.coffeeName = coffee.title
    }
    
    
    
    var body: some View {
        let truncatedText = coffeeName.prefix(min(coffeeName.count, maxLengthOfCharacters))
        
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
                        
                        HStack(spacing:20){
                            HStack{
                                Image(systemName: "square.and.pencil")
                                Text("Edit Address")
                                    .font(.custom("Sora-Regular", size: 12))
                            }
                            .frame(width: 120, height: 26)
                            .overlay{
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray)
                            }
                            
                            HStack{
                                Image(systemName: "note.text")
                                Text("Add Note")
                                    .font(.custom("Sora-Regular", size: 12))
                                
                            }
                            .frame(width: 120, height: 26)
                            .overlay{
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray)
                            }
                            
                        }
                        .padding(.vertical)
                        
                        Divider()
                            .frame(height:1)
                        
                        HStack{
                            HStack{
                                Image(coffee.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .frame(width: 54, height: 54)
                                
                                VStack(alignment:.leading){
                                    Text(truncatedText + (coffeeName.count > maxLengthOfCharacters ? "..." : ""))
                                        .font(.custom("Sora-SemiBold", size: 16))
                                    Text("\(coffee.coffeType.rawValue.capitalized)")
                                        .font(.custom("Sora-Regular", size: 12))
                                        .foregroundStyle(.gray)
                                    
                                }
                            }
                            
                            Spacer()
                            
                            HStack(spacing:10){
                                Button(action: {
                                    itemCount -= 1
                                    
                                    if itemCount < 1{
                                        itemCount = 1
                                    }
                                    
                                }, label: {
                                    Image(systemName: "minus")
                                        .foregroundStyle(.ashBlack)
                                        .frame(width: 24, height: 24)
                                        .background(.offWhite)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                })
                                
                                Text("\(itemCount)")
                                    .font(.custom("Sora-SemiBold", size: 14))
                                
                                Button(action: {
                                    itemCount += 1
                                }, label: {
                                    Image(systemName: "plus")
                                        .foregroundStyle(.ashBlack)
                                        .frame(width: 24, height: 24)
                                        .background(.offWhite)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                })
                            }
                        }
                        
                        Divider()
                            .background(.darkBrown)
                        
                        if coffee.hasDiscount{
                            DiscountCardView()
                                .padding(.vertical)
                        }
                        
                        VStack(alignment:.leading){
                            Text("Payment Summary")
                                .font(.custom("Sora-SemiBold", size: 16))
                            
                            VStack(alignment:.leading, spacing:20){
                                HStack{
                                    Text("Price")
                                        .font(.custom("Sora-Regular", size: 14))
                                        .foregroundStyle(.ashBlack)
                                    Spacer()
                                    Text("$\(String(format: "%.2f", Double(itemCount) * coffee.price))")
                                        .font(.custom("Sora-SemiBold", size: 14))
                                    
                                }
                                
                                HStack{
                                    Text("Delivery Fee")
                                        .font(.custom("Sora-Regular", size: 14))
                                        .foregroundStyle(.ashBlack)
                                    
                                    Spacer()
                                    
                                    Text("$\(String(format: "%.2f", previousDeliveryFee))")
                                        .strikethrough()
                                        .foregroundStyle(.ashBlack)
                                    
                                    Text("$\(String(format: "%.2f", deliveryFee))")
                                        .font(.custom("Sora-SemiBold", size: 14))
                                    
                                }
                                
                                HStack{
                                    Text("Total")
                                        .font(.custom("Sora-Bold", size: 16))
                                    
                                    
                                }
                            }
                            .padding(.top)
                        }
                        .padding(.top)
                        
                        
                    }
                    
                    
                }
                .padding(.top)
                
                Spacer()
                
                VStack {
                    Text("Order")
                    
                }
                .frame(maxWidth: .infinity)
                
                
            }
            
        }
        .padding(.horizontal,40)
        .navigationTitle("Order")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

#Preview {
    OrderPageView(coffee: DeveloperPreview().coffees[1])
}
