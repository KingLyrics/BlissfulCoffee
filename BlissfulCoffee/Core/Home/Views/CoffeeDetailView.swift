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
        NavigationStack{
            ScrollView{
                VStack(alignment:.leading){
                    Image(coffee.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .frame(width: 327, height: 202)
                    
                    
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
                            .offset(x:55,y:10)
                            
                            
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
                        
                        VStack(alignment: .leading) {
                            Text("Description")
                                .font(.custom("Sora-SemiBold", size: 16))
                            ExpandableTextView(text: coffee.description, linelimit: 2)
                                
                        }
                        .padding(.top)
                        
                    }
                    .padding(.horizontal,15)
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
}

#Preview {
    CoffeeDetailView(coffee: DeveloperPreview().coffees[3])
}
