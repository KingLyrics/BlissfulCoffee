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
            ZStack{
                Image(coffee.image)
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 140, height: 128)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                HStack{
                    Image(.star)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                    Text("\(String(format: "%.1f", coffee.rating))")
                        .foregroundStyle(.offWhite)
                }
                .offset(x:39, y: -47)
            }
            VStack(alignment:.leading){
                Text(coffee.title)
                    .font(.custom("Sora-Bold", size: 14))
                Text("\(coffee.coffeType.rawValue.capitalized)")
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal,10)
        .frame(width: 160, height: 200)
        .background(.offGray)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
        
    }
}

#Preview {
    CoffeeCardView(coffee: DeveloperPreview().coffes[0])
}
