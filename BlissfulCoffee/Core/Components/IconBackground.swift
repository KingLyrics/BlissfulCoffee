//
//  IconBackground.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import SwiftUI

struct IconBackground: View {
    let imageName:String
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundStyle(.darkBrown)
            .frame(width: 44 , height: 44)
            .background(.offGray)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    IconBackground(imageName: "bicycle")
}
