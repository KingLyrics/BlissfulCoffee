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
            .frame(maxWidth: 200)
            
            Spacer()
        }
        
    }
}

#Preview {
    SearchBar()
}
