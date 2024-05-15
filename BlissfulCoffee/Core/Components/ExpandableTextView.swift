//
//  ExpandableTextView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 15/05/2024.
//

import SwiftUI

struct ExpandableTextView: View {
    @State private var expanded:Bool = false
    @State private var truncated:Bool = false
   
    
    private var text:String
    let linelimit:Int
    
    init( text: String, linelimit: Int) {
        self.text = text
        self.linelimit = linelimit
    }
    
    private var readMoreText:String{
        if !truncated{
            return ""
        }else{
            return self.expanded ? "Read Less" : "Read More"
        }
    }
    
    var body: some View {
           VStack(alignment: .leading) {
               Text(text)
                   .lineLimit(expanded ?  nil : linelimit)
                   .background(
                       Text(text)
                        .lineLimit(linelimit)
                           .background(GeometryReader { visibleTextGeometry in
                               ZStack {
                                   Text(self.text)
                                       .background(GeometryReader { fullTextGeometry in
                                           Color.clear.onAppear {
                                               self.truncated = fullTextGeometry.size.height > visibleTextGeometry.size.height
                                           }
                                       })
                               }
                               .frame(height: 200)
                           })
                           .hidden()
               )
               if truncated {
                   Button(action: {
                       withAnimation {
                           expanded.toggle()
                       }
                   }, label: {
                       Text(readMoreText)
                           .font(.custom("Sora-SemiBold", size: 16))
                   })
               }
           }
           .font(.custom("Sora-Regular", size: 16))
       }
   }

#Preview {
    ExpandableTextView(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut laborum", linelimit: 3)
}
