//
//  DeliveryMapRepresentable.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 31/05/2024.
//

import SwiftUI
import MapKit


struct DeliveryMapRepresentable:UIViewRepresentable{
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode =  .follow
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
    
}

extension DeliveryMapRepresentable{
    class MapCoordinator:NSObject, MKMapViewDelegate{
        let parent:DeliveryMapRepresentable
        
        init(parent: DeliveryMapRepresentable) {
            self.parent = parent
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.5)
            )
            parent.mapView.setRegion(region, animated: true)
        }
        
        
    }
}
