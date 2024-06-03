import SwiftUI

struct FavoriteView: View {
    @Binding var favoriteCoffees: [Coffee]
    
    var body: some View {
        NavigationStack {
            if favoriteCoffees.isEmpty{
                VStack(alignment: .leading){
                    Spacer()
                    Text("No favorite coffee Selected")
                        .font(.custom("Sora-Bold", size: 19))
                    Spacer()
                }
            }else{
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
                    .onDelete(perform: deleteItems)
                }
                .navigationTitle("Favorite Coffees")
            }
        }
    }
    
    private func deleteItems(at offsets: IndexSet) {
        favoriteCoffees.remove(atOffsets: offsets)
    }
}

#Preview {
    FavoriteView(favoriteCoffees: .constant(DeveloperPreview().coffees))
        .environmentObject(HomeViewModel(service: HomeService()))
}
