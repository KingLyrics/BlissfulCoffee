import SwiftUI

struct HomeView: View {
    @State private var selectedCategory: CoffeTypes = .allCoffee
    @ObservedObject var viewModel:HomeViewModel
    
    private let flexibleColumn = [
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 40),
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
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
                                    viewModel.filterCoffees(by: category)
                                }
                            }
                        }
                        .padding(.bottom, 15)
                        
                    }
                    
                    LazyVGrid(columns: flexibleColumn, spacing: 30) {
                        ForEach(viewModel.filteredCoffees, id: \.self) { coffee in
                            NavigationLink(destination: CoffeeDetailView(viewModel: viewModel, coffee: coffee)) {
                                CoffeeCardView(coffee: coffee)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel(service: HomeService()))
      

}
