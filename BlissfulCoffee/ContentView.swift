//
//  ContentView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstLaunch") private var isFirstLaunch: Bool = true
    
    var body: some View {
        Group{
            if isFirstLaunch{
                LaunchScreen(isFirstLaunch: $isFirstLaunch)
            }else{
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
