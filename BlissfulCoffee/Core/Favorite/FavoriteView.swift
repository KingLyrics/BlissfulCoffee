//
//  FavoriteView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//


import SwiftUI

struct FavoriteView: View {
    @Binding var favoriteCoffees: [Coffee]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteCoffees) { coffee in
                    HStack {
                        Image(coffee.image)
                            .resizable()
                            .frame(width: 130, height: 90)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                        VStack(alignment: .leading) {
                            Text(coffee.title)
                                .font(.headline)
                            Text(coffee.coffeType.rawValue.capitalized)
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
    FavoriteView(favoriteCoffees: .constant(DeveloperPreview().coffees))
        .environmentObject(HomeViewModel(service: HomeService()))

}
