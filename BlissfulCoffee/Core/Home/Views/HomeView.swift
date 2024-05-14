import SwiftUI

struct HomeView: View {
    @State private var selectedCategory: CoffeTypes = .allCoffee
    @StateObject var viewModel = HomeViewModel(service: HomeService())
    
    private let flexibleColumn = [
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 40),
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                
                ScrollView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 22) {
                            ForEach(CoffeTypes.allCases, id: \.self) { category in
                                CategoryCells(
                                    typeOfCoffee: category.rawValue.capitalized,
                                    isSelected: category == selectedCategory
                                )
                                .onTapGesture {
                                    selectedCategory = category
                                }
                            }
                        }
                        .padding(.bottom, 30)
                    }
                    
                    LazyVGrid(columns: flexibleColumn, spacing: 30) {
                        ForEach(viewModel.coffees, id: \.self) { coffee in
                            NavigationLink(destination: CoffeeDetailView(coffee: coffee)) {
                                CoffeeCardView(coffee: coffee)
                            }
                            .buttonStyle(PlainButtonStyle())

                        }
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
