//
//  CoffeeDetailView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct CoffeeDetailView: View {
    @ObservedObject var viewModel: HomeViewModel
    @State private var selectedCoffeeSize: Sizes = .Large
    @State private var isFavorite: Bool
    @State private var showingAlert: Bool = false
    @State private var alertMessage: String = ""
    
    var coffee: Coffee
    
    init(viewModel: HomeViewModel, coffee: Coffee) {
        self.viewModel = viewModel
        self.coffee = coffee
        _isFavorite = State(initialValue: coffee.isFavorite)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Image(coffee.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 327, height: 202)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(coffee.title)
                            .font(.custom("Sora-SemiBold", size: 20))
                        
                        HStack {
                            Text("\(coffee.coffeType.rawValue.capitalized)")
                                .font(.custom("Sora-Regular", size: 15))
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 15) {
                                IconBackground(imageName: "bicycle")
                                IconBackground(imageName: "cup.and.saucer")
                                IconBackground(imageName: "takeoutbag.and.cup.and.straw")
                            }
                            .offset(x: 67, y: 10)
                        }
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                            HStack {
                                Text("\(String(format: "%.1f", coffee.rating))")
                                    .font(.custom("Sora-Bold", size: 16))
                                Text("(\(coffee.noOfComments))")
                                    .foregroundStyle(.gray)
                            }
                        }
                        .padding(.vertical, 20)
                        
                        Divider()
                            .frame(width: 330, height: 20)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Description")
                                .font(.custom("Sora-SemiBold", size: 16))
                            ExpandableTextView(text: coffee.description, linelimit: 2)
                        }
                        .padding(.top)
                        
                        VStack(alignment: .leading, spacing: 30) {
                            Text("Size")
                                .font(.custom("Sora-SemiBold", size: 16))
                                .padding(.top, 20)
                            
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 0))], spacing: 30) {
                                ForEach(coffee.sizes, id: \.self) { size in
                                    SizeCells(isSelected: size == selectedCoffeeSize, sizeName: size.rawValue)
                                        .onTapGesture {
                                            selectedCoffeeSize = size
                                        }
                                }
                            }
                        }
                        .padding(.bottom, 50)
                    }
                }
                .padding(.leading, 9)
            }
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isFavorite.toggle()
                        viewModel.toggleFavorite(for: coffee)
                        alertMessage = isFavorite ? "\(coffee.title) has been added to your favorites." : "\(coffee.title) has been removed from your favorites."
                        showingAlert = true
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(.black)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text(alertMessage),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                HStack(spacing: 50) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Price")
                            .font(.custom("Sora-Regular", size: 14))
                            .foregroundStyle(.gray)
                        Text("$ \(String(format: "%.2f", coffee.price))")
                            .font(.custom("Sora-SemiBold", size: 18))
                            .foregroundStyle(.brown)
                    }
                    
                    NavigationLink(destination: OrderPageView(coffee: coffee)) {
                        Text("Buy Now")
                            .font(.custom("Sora-SemiBold", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 217, height: 56)
                            .background(Color.brown)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
}

#Preview {
    CoffeeDetailView(viewModel: HomeViewModel(service: HomeService()), coffee: DeveloperPreview().coffees[3])
}
