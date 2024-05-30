//
//  MainTabBar.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//


import SwiftUI

struct MainTabBar: View {
    @StateObject var viewModel = HomeViewModel(service: HomeService())

    var body: some View {
        TabView {
            HomeView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
             
            FavoriteView(favoriteCoffees: $viewModel.favoriteCoffees)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }
        }
    }
}

#Preview {
    MainTabBar()
        .environmentObject(HomeViewModel(service: HomeService()))
}

