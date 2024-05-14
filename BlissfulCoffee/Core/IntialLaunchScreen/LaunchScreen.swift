//
//  LaunchScreen.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct LaunchScreen: View {
    @Binding var isFirstLaunch: Bool

    var body: some View {
        VStack {
                  Text("Welcome to the App!")
                      .font(.largeTitle)
                      .padding()
                  Text("This screen only appears on the first launch.")
                      .padding()
                  Button(action: {
                      isFirstLaunch = false
                  }) {
                      Text("Go to Home")
                          .font(.title2)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
              }
          }
    }

#Preview {
    LaunchScreen(isFirstLaunch: .constant(false))
}
