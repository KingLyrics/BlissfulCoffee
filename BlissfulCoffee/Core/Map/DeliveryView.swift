// DeliveryView.swift
// BlissfulCoffee
//
// Created by Ekomobong Edeme on 30/05/2024.
//



import SwiftUI
import MapKit
import CoreLocation

struct DeliveryView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 9.0088, longitude: 38.7666), // Addis Ababa coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    @State private var deliveryStatus = "On the way"
    
    @State private var userLocation: CLLocationCoordinate2D? // User's current location
    
    let locationManager = CLLocationManager()

    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .overlay(
                    RouteLine(from: region.center, to: CLLocationCoordinate2D(latitude: 9.0100, longitude: 38.7680)) // Replace with delivery location
                        .stroke(Color.brown, lineWidth: 3)
                )
                .onAppear {
                    requestLocation()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) { // Simulate delivery after 5 seconds
                        deliveryStatus = "Delivered"
                    }
                }
                .accessibilityLabel(deliveryStatus) // Announce delivery status for VoiceOver
            
            if let userLocation = userLocation {
                Text("User Location: \(userLocation.latitude), \(userLocation.longitude)")
                    .padding()
            }
        }
    }
    
    private func requestLocation() {
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }
}

extension DeliveryView: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            userLocation = location.coordinate
            region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        }
    }
}

struct RouteLine: Shape {
    private var from: CLLocationCoordinate2D
    private var to: CLLocationCoordinate2D

    init(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D) {
        self.from = from
        self.to = to
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let fromPoint = CGPoint(x: rect.midX, y: rect.midY)
        let toPoint = CGPoint(x: rect.midX, y: rect.midY)
        
        path.move(to: fromPoint)
        path.addLine(to: toPoint)
        
        return path
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}


#Preview {
    DeliveryView()
}
    

