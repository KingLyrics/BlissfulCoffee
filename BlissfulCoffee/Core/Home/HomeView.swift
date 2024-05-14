//
//  HomeView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory:CoffeTypes = .allCoffee
    var body: some View {
            HeaderView()
        ScrollView{
            ScrollView(.horizontal){
                HStack(spacing: 22){
                    ForEach(CoffeTypes.allCases, id:\.self){ category in
                        CategoryCells(
                            typeOfCoffee: category.rawValue.capitalized,
                            isSelected: category == selectedCategory
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
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

