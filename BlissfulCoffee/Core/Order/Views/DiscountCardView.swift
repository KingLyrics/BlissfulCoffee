//
//  DiscountCardView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 17/05/2024.
//

import SwiftUI

struct DiscountCardView: View {
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "medal.fill")
                    .foregroundStyle(.darkBrown)
                Text("1 Discount is Applied")
                    .font(.custom("Sora-SemiBold", size: 14))
            }
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 14))
        }
        .padding()
        .background(.offWhite)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    DiscountCardView()
}
