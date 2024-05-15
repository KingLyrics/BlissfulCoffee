//
//  MainTabBar.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            FavoriteView()
                .tabItem  {
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
}
