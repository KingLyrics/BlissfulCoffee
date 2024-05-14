//
//  CoffeeDetailView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct CoffeeDetailView: View {
    let coffee:Coffee
    
    var body: some View {
        Text(coffee.title)
    }
}

#Preview {
    CoffeeDetailView(coffee: DeveloperPreview().coffees[3])
}
