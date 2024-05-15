//
//  SizeCells.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import SwiftUI

struct SizeCells: View {
     var selectedSize:Sizes = .Medium
     var isSelected:Bool = false
    let sizeName:String
    
    var body: some View {
        Text(sizeName)
            .font(.custom("Sora-Regular", size: 14))
            .foregroundStyle(isSelected ? .darkBrown : .ashBlack )
            .frame(width: 96, height: 41)
            .background(isSelected ? .offGray  : .white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? .darkBrown : .offGray)
            }
    }
}

#Preview {
    VStack{
        SizeCells( isSelected: true, sizeName: "S")
        SizeCells( sizeName: "M")
    }
}
