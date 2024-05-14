//
//  HeaderView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("Location")
                        .font(.custom("Sora-Light", size: 14))
                        .foregroundStyle(.offGray)

                    HStack{
                        Text("Addis Ababa, ETH")
                            .font(.custom("Sora-ExtraBold", size: 21))
                        Image(systemName: "chevron.down")
                    }
                    .foregroundStyle(.offWhite)
                    
                    SearchBar()
                }
                Spacer()
                
            }
            .padding()

        }
        
        .frame(maxWidth:.infinity)
        .background(                    
            LinearGradient(gradient: Gradient(colors: [Color(.darkGray), .black]), startPoint: .leading, endPoint: .trailing)
          
)
        
       
        
        
    }
}

#Preview {
    HeaderView()
}
