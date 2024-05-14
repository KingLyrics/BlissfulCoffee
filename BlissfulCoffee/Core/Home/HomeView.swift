//
//  HomeView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory:CoffeTypes = .allCoffee
    @StateObject var viewModel = HomeViewModel(service: HomeService())
    
    private let flexibleColumn = [
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 40),

    ]
    
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
                .padding(.bottom,30)
            }
            .scrollIndicators(.hidden)
            
            LazyVGrid(columns: flexibleColumn, spacing: 30){
                ForEach(viewModel.coffees, id:\.self){coffee in
                    CoffeeCardView(coffee: coffee)
                }
            }
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    HomeView()
}

// promo card later

