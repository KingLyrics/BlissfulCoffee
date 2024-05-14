//
//  Button.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct Button: View {
    let text:String
    var body: some View {
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

#Preview {
    Button()
}
