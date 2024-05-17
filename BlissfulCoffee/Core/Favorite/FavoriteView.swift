//
//  FavoriteView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import SwiftUI

struct FavoriteView: View {
    @Binding var coffees: [Coffee]
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(coffees.filter { $0.isFavorite }) { coffee in
                    HStack {
                        Image(coffee.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(coffee.title)
                                .font(.headline)
                            Text(coffee.coffeType.rawValue)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Favorite Coffees")
        }
    }
}

#Preview {
    FavoriteView(coffees: .constant(DeveloperPreview().coffees))
}
