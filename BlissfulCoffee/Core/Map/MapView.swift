//
//  MapView.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 30/05/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        DeliveryMapRepresentable()
            .ignoresSafeArea()
        
    }
        
}

#Preview {
    MapView()
}
