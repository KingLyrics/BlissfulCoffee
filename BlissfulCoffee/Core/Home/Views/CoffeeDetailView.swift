//
//  CoffeeDetailView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import SwiftUI

struct CoffeeDetailView: View {
    @State private var selectedCoffeeSize:Sizes = .Medium
    let coffee:Coffee
   
    
    private let flexibleColumn = [
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 40),
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment:.leading){
                    Image(coffee.image)
                        .resizable()
                        
                        .scaledToFill()
                        .frame(width: 327, height: 202)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    
                    
                    VStack(alignment: .leading , spacing: -5){
                        Text(coffee.title)
                            .font(.custom("Sora-SemiBold", size: 20))
                        
                        HStack{
                            Text("\(coffee.coffeType.rawValue.capitalized)")
                                .font(.custom("Sora-Regular", size: 15))
                                .foregroundStyle(.gray)
                            
                            HStack(spacing:15){
                                IconBackground(imageName: "bicycle")
                                IconBackground(imageName: "cup.and.saucer")
                                IconBackground(imageName: "takeoutbag.and.cup.and.straw")
                            }
                            .offset(x:67,y:10)
                            
                            
                        }
                        
                        HStack{
                            Image(.star)
                                .resizable()
                                .frame(width: 20, height: 20)
                            HStack{
                                Text("\(String(format: "%.1f", coffee.rating))")
                                    .font(.custom("Sora-Bold", size: 16))
                                Text("(\(coffee.noOfComments))")
                                    .foregroundStyle(.gray)
                            }
                        }
                        .padding(.vertical,20)
                        
                        
                        Divider()
                            .frame(width: 300, height: 20)
                        
                        VStack(alignment: .leading , spacing: 10) {
                            Text("Description")
                                .font(.custom("Sora-SemiBold", size: 16))
                            ExpandableTextView(text: coffee.description, linelimit: 2)
                            
                        }
                        .padding(.top)
                        
                        VStack(alignment:.leading, spacing: 30){
                            Text("Size")
                                .font(.custom("Sora-SemiBold", size: 16))
                                .padding(.top, 20)
                            
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 0))], spacing: 30, content: {
                                ForEach(coffee.sizes){ size in
                                    SizeCells(isSelected: size == selectedCoffeeSize, sizeName:size.rawValue)
                                        .onTapGesture{
                                            selectedCoffeeSize = size
                                        }
                                }
                                
                            })
                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                }
                .padding(.leading, 9)
                
            }

        }
        
        .safeAreaInset(edge: .bottom) {
            VStack{
                Text("Price")
                    .frame(maxWidth: .infinity)
                    .background(.red)
                
            }
            
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .foregroundStyle(.ashBlack)
                })
            }
        }
        .padding()
    }
}


#Preview {
    CoffeeDetailView(coffee: DeveloperPreview().coffees[3])
}
