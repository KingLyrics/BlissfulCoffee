//
//  MapController.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 30/05/2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var riderLocation: CLLocationCoordinate2D
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let identifier = "Rider"
            var view: MKMarkerAnnotationView
            
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.markerTintColor = .orange
                view.glyphImage = UIImage(systemName: "bicycle")
            }
            return view
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.removeAnnotations(uiView.annotations)
        let annotation = MKPointAnnotation()
        annotation.coordinate = riderLocation
        uiView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(
            center: riderLocation,
            latitudinalMeters: 500,
            longitudinalMeters: 500
        )
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    @State var riderLocation = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    return MapView(riderLocation: $riderLocation)
}

