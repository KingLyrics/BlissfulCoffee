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
        ZStack {
            Image(.offboarding)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Spacer()
                
                VStack(alignment:.center, spacing:11){
                    Text("Fall in Love with")
                    Text("Coffee in Blissful")
                    Text("Delight!")
                    
                }
                .foregroundStyle(.offWhite)
                .font(.custom("Sora-ExtraBold", size: 40))
                VStack(spacing:6){
                    Text("Welcome to our cozy coffee corner, where ")
                    Text("every cup is a delightful for you.")
                }
                .font(.custom("Sora-Light", size: 16))
                .foregroundStyle(.offGray)
                .padding(.vertical)
                
                Button(action: {
                    isFirstLaunch = false
                    
                }, label: {
                    Text("Get Started")
                        .font(.custom("Sora-ExtraBold", size: 16))
                        .foregroundStyle(.offWhite)
                        .frame(minWidth: 327, minHeight: 56)
                        .background(.darkBrown)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                })
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    LaunchScreen(isFirstLaunch: .constant(false))
}




//                  Button(action: {
//                      isFirstLaunch = false
//                  }) {
//                      Text("Go to Home")
//                          .font(.title2)
//                          .padding()
//                          .background(Color.blue)
//                          .foregroundColor(.white)
//                          .cornerRadius(10)
//                  }
