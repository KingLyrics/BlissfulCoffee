//
//  CategoryCells.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct CategoryCells: View {
    var typeOfCoffee:String = "Espresso"
    var isSelected:Bool = false
    
    var body: some View {
        Text(typeOfCoffee)
            .foregroundStyle(isSelected ? .offWhite : .ashBlack)
            .font(.custom(isSelected ? "Sora-ExtraBold" : "Sora-Light", size: 14))
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(isSelected ? .darkBrown : .offGray)
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    VStack{
        CategoryCells(typeOfCoffee: "Latte", isSelected: true)
        CategoryCells()

    }
    
}
