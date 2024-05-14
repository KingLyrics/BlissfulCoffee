//
//  CoffeeCardView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct CoffeeCardView: View {
    let coffee:Coffee
    var body: some View {
        VStack{
            VStack{
                Image(coffee.image)
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 140, height: 128)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal)
                HStack{
                    Image(.star)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                    Text("\(String(format: "%.1f", coffee.rating))")
                        .font(.custom("Sora-Light", size: 11))
                        .foregroundStyle(.offWhite)
                }
                .offset(x:39, y: -125)
            }
            VStack(alignment:.leading, spacing: 10){
                VStack(alignment:.leading, spacing:5){
                    Text(coffee.title)
                        .font(.custom("Sora-Bold", size: 14))
                    Text("\(coffee.coffeType.rawValue.capitalized)")
                        .font(.custom("Sora-Light", size: 14))
                        .foregroundStyle(.gray)
                }
                HStack(spacing:55){
                    Text("$ \(String(format: "%.2f", coffee.price))")
                        .font(.custom("Sora-Bold", size: 19))
                   
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.offWhite)
                            .frame(width: 32, height: 32)
                            .background(.darkBrown)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    })
                }
            }
        }
        .frame(width: 159, height: 210)
        .padding(.vertical, 20)
        .padding(.horizontal, 5)
        .background(.offWhite)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
        
    }
}

#Preview {
    CoffeeCardView(coffee: DeveloperPreview().coffees[0])
}
