//
//  HomeView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            HeaderView()
        ScrollView{
            ScrollView(.horizontal){
                HStack(spacing: 22){
                    ForEach(0..<10){ _ in
                        CategoryCells(typeOfCoffee: "All Coffee")
                    }
                }
            }
            .scrollIndicators(.hidden)
            
            Text("Welcome to Blissful Coffee")
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    HomeView()
}

// promo card later

