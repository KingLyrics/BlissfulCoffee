// SwiftUIView.swift
// BlissfulCoffee
//
// Created by Ekomobong Edeme on 30/05/2024.
//

import SwiftUI
import CoreLocation

struct DeliveryView: View {
    @State private var userLocation = CLLocationCoordinate2D(latitude: 10, longitude: 10) // Default location
    @State private var riderLocation = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    @State private var riderDistance = 0.01
    
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.all)
            
            Text("Estimated Delivery Time: 10 minutes")
                .font(.headline)
                .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Your Order is on the Way!")
                        .font(.headline)
                    Text("We will deliver your goods to you as quickly as possible.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Image(systemName: "bicycle")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Brooklyn Simmons")
                        .font(.headline)
                    Text("Personal Courier")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            Button(action: updateRiderLocation) {
                Text("Simulate Rider Movement")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func updateRiderLocation() {
        // Simulate rider movement by updating location coordinates
        riderLocation.latitude += riderDistance * 0.10001
        riderLocation.longitude += riderDistance * 0.10001
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
