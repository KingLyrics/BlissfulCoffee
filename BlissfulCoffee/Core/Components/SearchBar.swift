//
//  SearchBar.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchedCoffee:String = ""
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.offWhite)
                TextField("", text: $searchedCoffee,
                          prompt: Text("Search Coffee")
                    .foregroundColor(.offWhite)
                )
                .foregroundStyle(.offWhite)
                .font(.custom("Sora-Light", size: 16))
                
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(.ashBlack)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .frame(minWidth: 200, maxWidth: 290 )
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "gearshape")
                    .foregroundStyle(.offWhite)
                    .padding(.vertical,12)
                    .padding(.horizontal, 14)
                    .background(.darkBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

            })
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    SearchBar()
}
